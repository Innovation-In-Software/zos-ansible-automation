#### [Labs](labs.md) => _lab-21-racf-user.md_

# Lab 21: Get RACF profile of a given userid via TSO command

Goals:

- Obtain a list of the names of members in a PDS.
- Assert that a required variable has been set.
- Extract selected values from text embedded in a JSON list using regex.

## Step 1: Develop a playbook to get RACF info for a userid

The general structure of the playbook will be the same as the one you developed that issues a TSO command. 

Use ansible.builtin.assert to verify that a value has been set for variable _userid_ before attempting to issue the TSO command. Display a helpful message when the variable has not been set.

Issue a TSO command to query the RACF profile of the userid. Include the base, TSO, and OMVS segments. 

Parse the result to extract specific values and display them. You can choose whichever attributes you want to extract, but please include at least one from each segment. For example, you might decide to extract:

- DEFAULT-GROUP (from the base segment)
- LAST-ACCESS (from the base segment)
- ACCTNUM (from the TSO segment)
- HOME (from the OMVS segment)

Use Ansible's _loop_ syntax to iterate over the list of attributes you want to extract, so that you don't have duplicate code to extract each one. 