#!/bin/python3

# This will print the current time in EST to timeFile
from datetime import datetime

time = datetime.now().strftime('%-I:%M %p')

with open('timeFile', 'w') as f:
    f.write(time + '\n')