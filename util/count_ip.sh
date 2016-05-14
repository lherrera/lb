#!/bin/sh
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"|sort|uniq -c
