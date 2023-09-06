#set page(
    numbering: "1",
    number-align: center,
    header: locate(
                loc => if [#loc.page()] == [1] {
                [#grid(
                    columns: (3fr, 1fr),
                    align(left)[
                        #set text(
                            font: "Times New Roman",
                            size: 24pt
                        )
                    = Pendulum Lab Report \
                    ],
                    align(right)[
                        #set text(
                            font: "Times New Roman",
                            size: 12pt
                        )
                        \
                        #emph("September 1st, 2023")
                    ]
                )

            ]
        } else {[]}
    ),
)
#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true)
= Abstract
A pendulum is a weight suspended from a fixed point that swings back and forth due to the force of gravity. The agreed upon value for standard acceleration due to gravity is 9.80665$m$/$s^2$. If you are able to correctly measure the length of one period in a pendulum swing and the length of the string, you should be able to derive a number close to the standard gravity value.

= Introduction 
Gravity is a well researched concept, and the point of this lab is to confirm the standard gravity value based on a real experiment. This lab will be finding the value of $g$ from data that was collected and linearized. \ \
#grid(
    columns: (1fr, 1fr),
    rows: (auto,auto),
    align(center)[
        #set text(16pt)
        $T = 2pi sqrt(L/g)$ \
    ],
    align(center)[
        #set text(16pt)
        $T^2 = (4 pi^2 L) / g$ \
    ],
    align(center)[
        #set text(12pt)
        \
        Formula to find period of a pendulum. \
    ],
    align(center)[
        #set text(12pt)
        \
        Formula to for time squared of a pendulum. \ \
    ]
)

$L$ represents the length of the string, and is the independant variable. $g$ represents the gravitational acceleration, which is a theoretical constant. $T$ represnts the length of a period, and is the dependant variable. Based on the equation, the hypothesis is that as string length increased, the length of the period would also increase.

= Method
A between-subject design with 8 different lengths of string was used. There was no control group, but there was an expected outcome. The the lenghts of string varried in increments of 10cm, starting from 10cm and ending at 80cm.

Each length of string was measured using a meter stick from the center of the ball to the edge of the clamp. For each length of string, three trials were performed where the length of 5 periods was collected using a stopwatch. One person counting the periods, and a second person who would be operating the stopwatch. The ball was dropped from a low enough height to minimize the effects of vibrations and drag.

List of  Materials\
#set list(marker: [--])
- Meter stick
- Pendulum weight
- 100cm long twine
- Stopwatch

= Procedure
1. Attach one end of a 100cm string to the weight of the pendulum. Then attach the other end to an elevated point at least 100cm of the ground.
2. Measure the length of the pendulum string to desired length. Draw the weight back and release, measuring the time for 5 periods with a stopwatch.
3. Repeat the second step with the different lengths of string as outline in the method.
4. FSinally, make a linear fit to $T^2$ vs $L$ data points using a least squared function.

= Results
#align(center)[
    #image("graph2.png")
]
The red line is the average squared time of all 3 trials. The data for the red line was derived from $T^2 = (t_1+t_2+t_3)/15$. $t_1$, $t_2$, and $t_3$ represent the three different trials respectively, and their sum was divided by 15 because there was 5 periods measured in each trial, meaning a total of 15 periods were measured. This produces a linear line, as $T^2=(4pi^2)/g$ has a linear slope. The slope value and the y-intercept in $T^2=m L+b$ where found using a least squares function in Python, which works by minimizing the sum of the squares of the residuals (a residual being the difference between an observed value and the fitted value provided by a model).

The value of $g$ derived from the slope was 9.09865$m$/$s^2$, which was found using the equation $g=(4pi^2)/m$, where $m$ is the slope (4.339). This equation is simply a rewritten form of $m=(4pi^2)/g$, where $m$ is simply equal to the slope of $T^2=(4pi^2L)/g$.

#pagebreak()

= Analysis
The percent error of the derived value of $g$ compared to standard gravity is 7.22%, which can be derived using the equation $delta=|(V_E-V_T)/V_T|*100$, where $V_E$ is 9.09865$m$/$s^2$ or the derived value of $g$ from the collected data, and $V_T$ is 9.80665$m$/$s^2$, or the standard value of gravity.

The large percentage error can be explained by several factors, but a big one is how the string was measured. When performing the experiment, we did not measure from the center of the weight, but instead from the top of the weight. The string length should be measured form the center of mass of the weight. 

Another source of error could be how many periods where measured. Given that the experiment was performed in under 45 minutes, we could have focused on measuring more periods instead of more lengths, as that would give us a more accurate average as the error from human judgement is impossible to eliminate, but increasing the sample size is the best way to minimize it. Another possible solution to this problem would be two have two people measuring the time with a stopwatch, and taking the average of the two times.

= Conclusion
Overall, this experiment was only mildly sucessful as there was quite a few inconsistencies with the data measured. In the future, we would measure from the proper point, as the formula relies on $L$ being the distance from the center of mass of the weight. We would also measure more periods and with more stopwatches, in order to eliminate human error with timing as much as possible.