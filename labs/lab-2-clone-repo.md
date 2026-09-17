#### [Labs](labs.md) => _lab-2-clone-repo.md_

# Lab 2: Clone the class repository 

Goal: Get a local copy of the class repository from Github. 

As an experienced MVS system programmer, you are probably familiar with version control systems like Serena Changeman, Panvalet, or Librarian. If you work on other systems as well as z/OS, you may also be familiar with Git. If you aren't familiar with Git, don't worry. It will be covered later in the course. 

For now, it's sufficient to know Git is a version control system and Github is an online service that manages so-called _repositories_. A repository or "repo" contains the source artifacts for a software project. It typically does not contain generated artifacts such as object modules.

A "software project" isn't necessarily an application. It can be a set of source artifacts for managing servers with Ansible, for instance.

A repository has been created to support this training class. In this lab, you will obtain a copy of the repo on your local development machine. 

## Step 1: Install or verify a git client 

VSCode can interface with a git client, but does not ship with one. You need to ensure your local development system has a git client installed. 

The Git Guides website has instructions on installing a git client on Microsoft Windows, MacOS, and Linux. The URL is [https://github.com/git-guides/install-git](https://github.com/git-guides/install-git). 

The instructions mention things like Github Desktop and issuing pull requests from inside VSCode. Don't worry about all that. It's too complicated. Keep it simple:

- Microsoft Windows: Download the Windows installer and run it.
- MacOS: Download the installer or use git-scm or use Homebrew to install it.
- Linux: Use the package manager for your distro (probably apt or dnf). 

After installation, the git client will be on the system path where VSCode can find it.

## Step 2: Clone the repo 

Once you have a git client installed, there are four ways to clone the repository and work with it within VSCode. (You only need to use one of these four ways.)

- Option 1: If you haven't added this repository to VSCode, open the Command Palette (ctrl+shift-P or cmd-shift-P), search for Git Clone, and paste in the repository URL.
- Option 2: If VSCode already knows about this repository, click on the source control icon in the left sidebar of the VSCode window. Open the list of repositories, click on the "three dots" icon next to the course repository name, and choose "clone repository".
- Option 3: Open the integrated terminal view in VSCode (ctrl+` or View -> Terminal on the main menu) and enter a git clone command in the Terminal panel.
- Option 4: In any command window outside of VSCode, enter a git clone command. 

If you use option 3 or 4, you'll have to enter git commands in Terminal going forward. If you want to use the source control feature built into VSCode, you need to use option 1. 

The git clone command looks like this:

```shell 
git clone <URL to repository>
``` 

The course repository is located at URL [xxx](xxx). 





