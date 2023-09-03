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

_L_ represents the length of the string, and is the independant variable. _g_ represents the gravitational acceleration, which is a theoretical constant. _T_ represnts the length of a period, and is the dependant variable. Based on the equation, the hypothesis is that as string length increased, the length of the period would also increase.

= Method
A between-subject design with 8 different lengths of string was used. There was no control group, but there was an expected outcome. The the lenghts of string varried in increments of 10cm, starting from 10cm and ending at 80cm.

List of  Materials\
#set list(marker: [--])
- Meter stick
- Pendulum weight
- 100cm long twine
- Elevated place to attach string
- Stopwatch

= Procedure
First, attach one end of a 100cm string to the weight of the pendulum. Then attach the other end to an elevated point at least 100cm of the ground.

Second, measure the length of the pendulum string to desired length. Draw the weight back and release, measuring the time for 5 periods with a stopwatch.

Finally, repeat the second step with the different lengths of string as outline in the method.

= Results
#align(center)[
    #image("graph.png")
]

$delta=|(V_E-V_T)/V_T|*100$