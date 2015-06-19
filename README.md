Installing ansible on mac
=========================

    sudo easy_install pip
    sudo pip install ansible --quiet

Examples
========

Bash Example
------------

This example shows how to invoke ansible via command line.

    $ ./list-users-and-jobs.sh
    SSH password:
    test.example.net | success | rc=0 >>
     23:21:23 up 96 days,  7:15,  1 user,  load average: 0.12, 0.17, 0.44
    USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
    gulcin.y pts/0    test.example.net 23:20   59.00s  0.04s  0.04s top


