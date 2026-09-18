#### [Labs](labs.md) => _lab-11-show-inventory.md_

# Lab 11: Explore inventory values and configure for the Lab z/OS system 

Goals:

1. Use ansible commands to view the contents of inventory.
2. Ensure inventory settings are correct for the Lab z/OS system.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Use Ansible commands to display inventory values 

Ansible inventory can be as simple as a single file, but in most environments there are numerous hosts of different kinds and various sets of environment variables. It often makes sense to organize this data in a consistent way rather than trying to maintain it all in a single file. 

The -i command-line option that points to the Ansible inventory can specify a single file or the name of a directory. Ansible pulls in all the files under that directory at runtime and puts it together into a single "blob." We don't have to try and maintain the information as a single "blob." We can organize subdirectories and files under the main inventory directory however we please. 

Rather than manually navigating the inventory directory to try and find all the settings relevant to whatever we're doing at the moment, we can use Ansible commands to display the information in a sensible way. 

This command shows all the values defined under inventory.

```shell 
ansible-inventory -i inventory --list 
```

This command shows a textual graph of the relationships between different inventory entries.

```shell 
ansible-inventory -i inventory --graph 
```

This command shows all the environment variables and other inventory information that is visible when we specify a particular host. Other information that may be stored under the inventory directory doesn't apply to this host. This example refers to the host named "zoslab" in the inventory. 

```shell 
ansible-inventory -i inventory --host zoslab 
```

## Step 3: Ensure inventory values are correct for access to the Lab z/OS host

Check that what you have defined on your control node includes the necessary values for access to our z/OS host. You can use the sample setup from this working repo to see all the relevant settings - https://github.com/neopragma/ansible-zos-sample. There is no need to clone the repo. You can view it online. 