# z/OS Ansible Automation

Ansible content for driving an IBM z/OS mainframe, run from Ansible Automation
Platform (AAP) 2.6.

## Layout

| Path | Purpose |
| --- | --- |
| `ping.yml` | Connectivity check — `ibm.ibm_zos_core.zos_ping` against the `mainframe` host. |
| `playbooks/submit_host_jcl.yml` | Submits `IBMUSER.JCL(IN2OUT)` and reports the job result. |
| `group_vars/all.yml` | `environment_vars` — the EBCDIC/auto-convert environment every z/OS task needs. |
| `collections/requirements.yml` | `ibm.ibm_zos_core`; AAP installs this on each project sync. |
| `inventory.example` | Template for running locally. The live `inventory` is gitignored. |

## Running from AAP

The project syncs from this repo. Everything else lives in AAP:

- **Inventory** `z/OS Mainframe` — host `mainframe`, with `ansible_host` and
  `ansible_python_interpreter` set as host variables.
- **Credential** `z/OS ibmuser SSH` — Machine credential, username `ibmuser`,
  SSH private key. **The key is never committed to this repo.**
- **Job Template** `z/OS Ping` — runs `ping.yml`.

`group_vars/all.yml` is picked up automatically because it sits next to the
playbook in the project root.

## Running locally

```bash
cp inventory.example inventory      # fill in the host
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook -u ibmuser -i inventory --private-key id_rsa ping.yml
```
