# GPA Linear Regression
GPA Linear Regression

```
G <- read.csv("gpa_linear_regression.csv", row.names = NULL)
str(G)
```

The table illustrates us that the significance of the time students spent on doing homework is very high, however data that shows us the amount of book they have at home is not significant. Probably, this happens because these numbers do not tell us that a student has read all this books
 

|                         |      Estimate     |     Std. Error    |      t value     |     Pr(>\|t\|)    |            |
|:-----------------------:|:-----------------:|:-----------------:|:----------------:|:-----------------:|:----------:|
|         Intercept       |      2.4213079    |      0.3495616    |       6.927      |      3.66e-07     |     ***    |
|         Free time       |     -0.0074131    |      0.0028221    |     -2.627       |      0.014780     |      *     |
|     Self-development    |      0.0148031    |      0.0049433    |       2.995      |      0.006286     |      **    |
|           Hours         |      0.0260977    |      0.0060817    |       4.291      |      0.000252     |     ***    |
|            ENT          |      0.0069319    |      0.0032097    |       2.160      |      0.041005     |      *     |
|           Books         |     -0.0005609    |      0.0006586    |     -0.852       |      0.402829     |            |

Here we can see the confirmation of the fact that the data, that displays us the amount of book a student has at home, has very low significance. In addition, there is an interesting situation where R2 of our Test model notably differs from our basic model.

|     Self-development                                       |        0.3    |     0.76    |
|------------------------------------------------------------|--------------:|------------:|
|     Self-development,   Free time,                         |       0.44    |     0.69    |
|     Self-development,   Free time, Homework,               |       0.64    |     0.78    |
|     Self-development,   Free time, Homework, ENT,          |        0.7    |     0.62    |
|     Self-development,   Free time, Homework, ENT, Books    |     0.7012    |     0.63    |

The table illustrates us  that there is no correlation higher that 0.7 and less than -0.7, therefore there is no multicollinearity

|                            |     GPA            |     Hours            |     ENT            |     Books         |     Free_time         |     Self.development     |
|----------------------------|--------------------|----------------------|--------------------|-------------------|-----------------------|--------------------------|
|     GPA                    |     1.0000000      |     0.5248504        |     0.3233360      |     0.1125267     |     -0.5529054        |     0.5446660            |
|     Hours                  |     0.52485035     |     1.00000000       |     -0.04769135    |     0.03350989    |     -0.10947783       |     0.06999712           |
|     ENT                    |     0.32333599     |     -0.04769135      |     1.00000000     |     0.25030235    |     -0.15608103       |     0.18603914           |
|     Books                  |     0.11252667     |     0.03350989       |     0.25030234     |     1.00000000    |     0.00958783        |     0.36674800           |
|     Free_time              |     -0.55290543    |     -0.10947783      |     -0.15608103    |     0.00958783    |     1.00000000        |     -0.36311972          |
|     Self.development       |     0.5446660      |     0.06999712       |     0.18603914     |     0.36674800    |     -0.36311972       |     1.00000000           |