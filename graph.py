import csv
import math
import matplotlib.pyplot as plt

x1 = []
y1 = []

#Find averaged data
with open("collected_data.csv", newline="") as col_csvfile:
    reader = csv.DictReader(col_csvfile)
    for row in reader:
        average_time = (float(row["trial1"]) + float(row["trial2"]) + float(row["trial3"])) / 15
        y1.append(average_time)

        length = row["length"]
        x1.append(length)

#Calculate experimental data
y2 = []

for i in range(8):
    distance = ((i+1)/10)
    time = 2*math.pi*math.sqrt(distance/9.80665)
    y2.append(time)

#Write averaged data to csv file
with open("averaged_data.csv", "w", newline="") as avg_csvfile:
    csvwriter = csv.writer(avg_csvfile)
    for x in range(8):
        gravity = float(4*(math.pi**2)*(float(x1[x])/100))/(float(y1[x])**2)
        grav_format = str(round(gravity,5))
        percent_error = str(round(((y1[x]-y2[x])/y2[x]*100),2))+"%"
        distance = str((x+1)*10)+"cm"
        experiment = str(round(y1[x], 2))+"s"
        theory = str(round(y2[x], 2))+"s"
        row = [distance,experiment,theory,percent_error, grav_format]
        csvwriter.writerow(row)

#Find gravity from experimental data
results = []
for y in range(8):
    fourpisqrd = float(4*(math.pi**2))
    length = float(x1[y])/100
    timesqrd = float(y1[y]**2)
    gravity = (fourpisqrd*length)/timesqrd
    results.append(gravity)

average_gravity = sum(results)/len(results)
print(average_gravity)

#Find percentage error
experiment = sum(y1)/8
theory = sum(y2)/8
error = abs((experiment-theory)/theory)*100
print(f"Percentage Error: {error}"  )

#Graph data
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