#### [Labs](labs.md) => _lab-11-ibm-zos-core.md_

# Lab 11: Install or verify the ibm_zos_core collection

Goals:

1. Verify ibm_zos_core is installed.
2. If necessary, install ibm_zos_core.
3. Install a particular version of ibm_zos_core.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: See which IBM Ansible collections are installed

```shell
ansible-galaxy collection list 
``` 

## Step 3: See which IBM Ansible collections are available 

There is no ansible-galaxy command that does this. We need to query an API and filter the results to get the answer. Since you are new to Linux and related tools, a script to do this is given in the class repository. The name is collection-search.sh. It will retrieve every available collection, so you need to pipe the output into grep to filter the results. The regular expression in the example below selects all results that begin with the characters "ibm.". 

```shell 
./collection-search.sh | grep '^ibm\.'
```

## Step 3: Install ibm_zos_core collection if necessary 

If your control node doesn't already have the ibm_zos_core collection installed, use ansible-galaxy to install it. See references below for help.

## References 

- [Version dependency matrix](https://ibm.github.io/z_ansible_collections_doc/ibm_zos_ims/docs/source/collection-requirements.html)
- [Ansible release history and versioning](https://deepwiki.com/ansible-collections/ibm_zos_core/1.3-release-history-and-versioning)
- [ibm_zos_core on Github](https://github.com/ansible-collections/ibm_zos_core)
- [ansible-galaxy documentation for installing IBM collections](https://galaxy.ansible.com/ui/repo/published/ibm/ibm_zos_core/docs/)
