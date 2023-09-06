import csv
import math
import matplotlib.pyplot as plt
import numpy as np

x1 = []
y1 = []

#Find averaged data
with open("collected_data.csv", newline="") as col_csvfile:
    reader = csv.DictReader(col_csvfile)
    for row in reader:
        average_time = (float(row["trial1"]) + float(row["trial2"]) + float(row["trial3"])) / 15
        y1.append(average_time**2)

        length = row["length"]
        x1.append(float(length)/100)

#Find slope
slope = np.polyfit(np.array(np.float64(x1)),np.array(y1),1)
m, b = slope

slope_line = []
for s in range(8):
    slope_line.append(((np.float64(x1[s]))*m)+b)

#Find gravity from experimental data
found_g = (4*(math.pi**2))/m
print(f"Derived value of g: {found_g}")

#Find percentage error
error = ((9.80665-found_g)/9.80665)*100
print(f"Percentage error: {error}")

print(f"Normal Values: {y1}")
print(f"Slope Values: {slope_line}")

#Graph data
fig, ax = plt.subplots()
plt.rcParams['text.usetex'] = True
font = {"fontname":"Times New Roman"}

ax.plot(x1, slope_line, color="b", linewidth=0.5, label=r"\fontfamily{Times}\selectfont $T^2=mL+b$")
ax.plot(x1, y1, color="r", linewidth=0.5, label=r"\fontfamily{Times}\selectfont Collected Data")

ax.legend(loc=4, frameon=False, title=r"\fontfamily{Times}\selectfont $m=4.339$ \ $b=0.0422$")

ax.set_title("Average Period Time Squared Relative to String Length", **font)
ax.set_ylabel("Average Period Time in Seconds Squared ($T^2$)", **font)
ax.set_xlabel("String Length in Meters (L)", **font)
plt.savefig("v2/graph2.png", dpi=250)