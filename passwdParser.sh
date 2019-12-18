#!/bin/bash
awk -F":" '$5 != "" && $1 != "" { print $1 $5} ' /etc/passwd
