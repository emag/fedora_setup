#!/bin/sh

echo fastestmirror=true >> /etc/dnf/dnf.conf
dnf clean all
