The purpose of this repo is to "locally" depoly (using Ansible and Vagrant) some common tools that would be used in a full CICD pipeline environment. The servers being deploy consist of:

So this is a "refactored" version of my original setup where I'm using the "roles" feature of Ansible to set up my playbooks. Hence why this branch is called "roles". It's just a different way of doing it. It helps as your playbooks become more advanced to break things into roles, that way your tasks, handlers, variables etc. are all related to a particular roles that you would use on a group of machines.

* GitLab
* [Vault](https://www.vaultproject.io/docs/install/)
* [Rocket-Chat](https://rocket.chat/docs/installation/manual-installation/centos/)
* Jenkins


**Vault Installation** - https://www.vaultproject.io/docs/install/

**Rocket.Chat Installation** - https://rocket.chat/docs/installation/manual-installation/centos/
