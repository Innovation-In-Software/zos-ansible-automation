#### [Labs](labs.md) => _lab-3-emulator.md_

# Lab 3: Install a 3270 terminal emulator 

Goal: Install a 3270 terminal emulator for access to z/OS. 

Ansible accesses z/OS via a secure shell connection to USS, but humans who manage z/OS systems sometimes need to sign on directly. For that, you need a 3270 terminal emulator on your development system. 

The one we have used in previous training classes is called x3270. It is a free product that works well. The homepage is at URL [https://x3270.bgp.nu/](https://x3270.bgp.nu/).

Several variants are listed there. They are various wrappers around the x3270 library. For Linux and MacOS, use c3270. For Microsoft Windows, use wc3270.