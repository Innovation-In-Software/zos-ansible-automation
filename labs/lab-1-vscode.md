#### [Labs](labs.md) => _lab-1-vscode.md_

# Lab 1: Install or verify VSCode 

Goal: Install VSCode or an editor of your choice on your personal development machine, or verify that you have an appropriate version already installed.

Ansible playbooks are defined in plain text, and all the configuration files and supporting files for Ansible are also plain text files (some are yaml or ini files, and some are Python source files, but all those are really plain text). Therefore, in principle you can use any text editor to create and edit Ansible files. 

At your company, most people use Microsoft's VSCode editor. We recommend VSCode as well, but we will not fight you if you have a strong preference for a different tool. VSCode offers some advantages:

- It's free.
- It's easy to use.
- It runs on Microsoft Windows, Apple MacOS, Linux, Unix, and even Raspberry Pi. 
- It has convenient integration with source management tools like Git.
- It has basic integration with AI coding assistants with no additional cost.
- Extensions are available that understand z/OS and that bring modern text editing features like syntax highlighting and autocompletion to JCL and traditional z/OS languages.

## Step 1: Check what you currently have 

If your development system already has a reasonably recent version of VSCode installed, you are done with this lab. Alternatively, if you feel strongly about using some other text editor and you already have it installed and ready to use, then you're good to go.

## Step 2: Install the latest stable version of VSCode for your platform

Follow Microsoft's guide to installing VSCode here: [https://microsoft.github.io/vscode-essentials/en/01-getting-started.html](https://microsoft.github.io/vscode-essentials/en/01-getting-started.html). It describes two or more ways to install VSCode on any of Microsoft Windows, MacOS, or Linux. If you are using WSL on Microsoft Windows, follow the instructions for your version of Linux.