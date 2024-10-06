from datetime import datetime

# Function to calculate time difference
def calculate_time_difference(start, end):
    start_time = datetime.strptime(start, "%H:%M:%S.%f")
    end_time = datetime.strptime(end, "%H:%M:%S.%f")
    return (end_time - start_time).total_seconds()

# Data as a string
data = """
10:49:03.308 : TS0
10:49:04.300 : TS1
10:49:06.331 : TS0
10:49:07.339 : TS1
10:49:09.403 : TS0
10:49:10.428 : TS1
10:49:12.524 : TS0
10:49:13.563 : TS1
10:49:15.677 : TS0
10:49:16.732 : TS1
10:49:18.892 : TS0
10:49:19.964 : TS1
10:49:22.140 : TS0
10:49:23.228 : TS1
"""

# Parse the data
lines = data.strip().split('\n')
timestamps = [line.split(' : ')[0] for line in lines]

# Calculate time differences and frequencies
time_differences = [calculate_time_difference(timestamps[i], timestamps[i+1]) for i in range(0, len(timestamps), 2)]
frequencies = [1200.0 / td for td in time_differences]

# Create the table
table = "Start Time\t\tEnd Time\t\tTime Difference (s)\tFrequency (MHz)\n"
table += "-"*80 + "\n"
for i in range(0, len(timestamps), 2):
    table += f"{timestamps[i]}\t{timestamps[i+1]}\t{time_differences[i//2]:.3f}\t\t{frequencies[i//2]:.3f}\n"

# Print the table
print(table)
