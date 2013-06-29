#!/bin/sh
/usr/sbin/selinux-activate
semanage port -a -t idia_web_port_t -p tcp 8001

