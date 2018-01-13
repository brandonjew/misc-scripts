#!/bin/python

import sys

mv = int(sys.argv[1])

print(format(0xFFE00000&( (round(mv*1.024)&0xFFF) <<21), '08x'))
