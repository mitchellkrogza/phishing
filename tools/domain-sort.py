#!/usr/bin/env python3.11

from fileinput import input

for y in sorted([x.strip().split('.')[::-1] for x in input()]): print(
    '.'.join(y[::-1]))
