# z/OS sample playbooks

Ported from [neopragma/ansible-zos-sample](https://github.com/neopragma/ansible-zos-sample)
for `ibm.ibm_zos_core` **2.0.0**. The upstream repo targets the 1.x API.

## What was changed

Twelve lines across six files. Nothing else was touched.

| File | Change |
|---|---|
| `playbooks/zos_submit_jcl_inline.yml` | `force:`→`replace:`, `location: USS`→`remote_src: true`, `wait_time_s:`→`wait_time:`, `.ddnames`→`.dds` |
| `playbooks/zos_rexx_inline.yml` | `is_binary:`→`binary:`, `force:`→`replace:` |
| `playbooks/submit_jcl_and_get_spooler_output.yml` | `location: DATA_SET`→`remote_src: true`, `wait_time_s:`→`wait_time:` |
| `playbooks/zos_db2_sample1.yml` | `location: LOCAL`→`remote_src: false`, `wait_time_s:`→`wait_time:` |
| `playbooks/roles/submit_library_provisioning_job/tasks/main.yml` | `wait_time_s:`→`wait_time:` |
| `playbooks/roles/zos_dataset_fetch/tasks/main.yml` | `is_binary:`→`binary:` |

The 11 remaining playbooks needed no changes. The RACF work is built on
`zos_tso_command`, whose API is identical between 1.15.0 and 2.0.0.

`force:` → `replace:` is the one to watch: `force` still exists in 2.0.0 but no
longer means "overwrite", so a stale playbook fails at *runtime*, not at parse
time, with `unable to overwrite unless replace=True is specified`.

## What was deliberately left out

- **`id_rsa` / `id_rsa.pub`** — the upstream repo commits a live private key.
  It is not reproduced here. Credentials belong in an AAP machine credential.
- `logs/`, `data/`, `report.csv`, `__pycache__/` — run artefacts.
- `inventory/` — AAP supplies the inventory. The non-toolchain variables from
  `inventory/group_vars/all/` are kept in `playbooks/group_vars/all.yml`;
  the toolchain paths come from the repo-root `group_vars/all.yml`.

## Not syntax-clean without extra collections

`cics_list_programs.yml`, `cics_report.yml` and `zosmf_authenticate.yml` need
`ibm.ibm_zos_cics` and `ibm.ibm_zosmf`, now pinned in
`collections/requirements.yml`. They are untested against this lab — there is
no verified CICS or z/OSMF endpoint for them here.
