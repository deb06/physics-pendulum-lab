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

experiment = sum(y1)/8
theory = sum(y2)/8
error = abs((experiment-theory)/theory)*100
print(f"Percentage Error: {error}"  )

fig, ax = plt.subplots()
plt.rcParams['text.usetex'] = True
font = {"fontname":"Times New Roman"}

ax.plot(x1, y2, color="b", linewidth=2, label=r"\fontfamily{Times}\selectfont $T=2\pi \sqrt{\frac Lg}$")
ax.plot(x1, y1, color="r", linewidth=2, label=r"\fontfamily{Times}\selectfont Collected Data")

ax.legend(loc=4, frameon=False, title=r"\fontfamily{Times}\selectfont $g=9.80665m/s^2$")

ax.set_title("Average Period Time Relative to String Length", **font)
ax.set_ylabel("Average Period Time in Seconds (T)", **font)
ax.set_xlabel("String Length in Centimeters (L)", **font)
plt.savefig("graph.png", dpi=250)