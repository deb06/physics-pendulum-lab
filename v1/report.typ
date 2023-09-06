#set page(
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
A pendulum is a weight suspended from a fixed point that swings back and forth due to the force of gravity. The agreed upon value for standard gravity is 9.80665$m$/$s^2$. If you are able to correctly measure the length of one period in a pendulum swing and the length of the string, you should be able to derive a number close to the standard gravity value.

Each length of string was measured using a meter stick from the center of the ball to the edge of the clamp. For each length of string, three trials were performed where the length of 5 periods was collected using a stopwatch. One person counting the periods, and a second person who would be operating the stopwatch. The ball was dropped from a low enough height to minimize the effects of vibrations and drag.

= Introduction 
Gravity is a well researched concept, and the point of this lab is to prove the standard gravity value based on a real experiment. This lab will be comparing the values that were measured to their theoretical counterparts. The following eqations will be used to determine these values. \ \
#grid(
    columns: (1fr, 1fr),
    rows: (auto,auto),
    align(center)[
        #set text(16pt)
        $T = 2pi sqrt(L/g)$ \
    ],
    align(center)[
        #set text(16pt)
        $g = (4 pi^2 L) / T^2$ \
    ],
    align(center)[
        #set text(12pt)
        \
        Formula to find period of a pendulum. \ \
    ],
    align(center)[
        #set text(12pt)
        \
        Formula to find gravitational acceleration. \ \
    ]
)

$L$ represents the length of the string, and is the independant variable. $g$ represents the gravitational acceleration, which is a theoretical constant. $T$ represnts the length of a period, and is the dependant variable. Based on the equation, the hypothesis is that as string length increased, the length of the period would also increase.

= Method
A between-subject design with 8 different lengths of string was used. There was no control group, but there was an expected outcome. The the lenghts of string varried in increments of 10cm, starting from 10cm and ending at 80cm.

List of  Materials\
#set list(marker: [--])
- Meter stick
- Pendulum weight
- 100cm long twine
- Stopwatch

= Procedure
First, attach one end of a 100cm string to the weight of the pendulum. Then attach the other end to an elevated point at least 100cm of the ground.

Second, measure the length of the pendulum string to desired length. Draw the weight back and release, measuring the time for 5 periods with a stopwatch.

Finally, repeat the second step with the different lengths of string as outline in the method.

= Results
#align(center)[
    #image("graph.png")
]
This graph represents the theoretical outcome from the equation with the blue line, and the average time of all 3 trials on the red line. The data for the red line was derived from $T = (t_1+t_2+t_3)/15$. $t_1$, $t_2$, and $t_3$ represent the three different trials respectively, and their sum was divided by 15 because there was 5 periods measured in each trial, meaning a total of 15 periods were measured. The data for the blue line was derived from plugging each of the string lengths into the equation $T = 2pi sqrt(L/g)$, where $g$ is assumed to be 9. 80665$m$/$s^2$. Below is a table with all of the averaged data and calculated theoretical data.
#align(center)[
    #let data = csv("averaged_data.csv")
    #table(
        columns: 5,
        rows: 9,
        [Length],
        [Experimental],
        [Theoretical],
        [Percent Error],
        [Experimental Value of $g$ ($m$/$s^2$)],
        ..data.flatten(),
    )
]
= Analysis
The average percentage error for the entire data set is 5.11%, which can be derived using the equation $delta=|(V_E-V_T)/V_T|*100$, where $V_E$ is the averaged sum experimental or collected data, $V_T$ is the averaged sum theoretical data derived from an equation, and $delta$ is the percentage error.

The large percentage error can be explained by several factors, but a big one is how the string was measured. When performing the experiment, we did not measure from the center of the weight, but instead from the top of the weight. The string length should be measured form the center of mass of the weight. When accounting for this by adding the radius of the weight (`~`1cm) to the theoritcal data's length with the equation $T = 2pi sqrt((L+0.01)/g)$, the percentage error is lowered to 3.74%.

Another source of error could be how many periods where measured. Given that the experiment was performed in under 45 minutes, we could have focused on measuring more periods instead of more lengths, as that would give us a more accurate average as the error from human judgement is impossible to eliminate, but increasing the sample size is the best way to minimize it. Another possible solution to this problem would be two have two people measuring the time with a stopwatch, and taking the average of the two times.

The average value of $g$ derived from $g = (4 pi^2 L) / T^2$ is 8.83689$m$/$s^2$, which is quite a bit off the expected value of 9.80665$m$/$s^2$, with an absolute error of  0.96976$m$/$s^2$. This is due to many factors, such as not measuring from the center of the weight, dropping the weight from too far increasing vibrations in the string and drag, and only measuring a total of 15 periods for each length.

= Conclusion
Overall, this experiment was not very sucessful as there was quite a few inconsistencies with the data measured. In the future, we would measure from the proper point, as the formula relies on $L$ being the distance from the center of mass of the weight. We would also measure more periods and with more stopwatches, in order to eliminate human error with timing as much as possible.