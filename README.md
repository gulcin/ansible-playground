Installing Ansible on mac
=========================

    sudo easy_install pip
    sudo pip install ansible --quiet

Examples
========

Bash Task
---------

This example shows how to invoke ansible via command line.

    $ ./list-users-and-jobs.sh
    SSH password:
    test.example.net | success | rc=0 >>
     23:21:23 up 96 days,  7:15,  1 user,  load average: 0.12, 0.17, 0.44
    USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
    gulcin.y pts/0    test.example.net 23:20   59.00s  0.04s  0.04s top

Git Playbook
------------

This example provides a simple Ansible playbook. Tasks and handlers in the playbook performs the following:

  - first ensures that git is installed
  - clones this repo if a workspace does not exist
  - updates the workspace if this repo is already cloned
  - triggers update message if the workspace is updated.

Example playbook outputs are located under the `02-git-playbook/playbook-output` folder.

The playbook is invoked using the command below:

    $ cd 02-git-playbook/
    $ ansible-playbook main.yml -i hosts.yml -K -k -vvv

Dpkg Comparison Playbook
------------------------

This example provides a conditional Ansible playbook. Tasks and handlers in the playbook performs the following:

  - finds installed python version
  - installs python-pip if python version < 2.7.9
  - detects if ssl_match_hostname module is installed
  - installs ssl_match_hostname package if it is missing

Example playbook outputs are located under the `03-dpkg-comparison-playbook/playbook-output` folder.

The playbook is invoked using the command below:

    $ cd 03-dpkg-comparison-playbook/
    $ ansible-playbook main.yml -i hosts.ini -K -k -vvv


