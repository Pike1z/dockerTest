# This will print the current time in EST
from datetime import datetime

time = datetime.now().strftime('%-I:%M %p')
print(time)