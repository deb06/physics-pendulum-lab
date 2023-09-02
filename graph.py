import csv
import math
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter

x1 = []
y1 = []

with open("data.csv", newline="") as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        average_time = (float(row["trial1"]) + float(row["trial2"]) + float(row["trial3"])) / 15
        y1.append(average_time)

        length = row["distance"]
        x1.append(length)

y2 = []

for i in range(8):
    distance = ((i+1)/10)
    time = 2*math.pi*math.sqrt(distance/9.80665)
    y2.append(time)

error = abs(sum(y1)/8 / sum(y2)/8) * 100
print(error)

fig, ax = plt.subplots()

ax.plot(x1, y1, color="r", linewidth=2, label="Collected Data")
ax.plot(x1, y2, color="b", linewidth=2, label="Expected Data")
ax.legend()

ax.set_title("Average Period Time Relative to String Length")
plt.ylabel("Average Period Time in Seconds")
plt.xlabel("String Length in Centimeters")
plt.savefig("graph.png")