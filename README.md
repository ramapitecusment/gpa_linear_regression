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
<<<<<<< HEAD
|           Books         |     -0.0005609    |      0.0006586    |     -0.852       |      0.402829     |            |
=======
|           Books         |     -0.0005609    |      0.0006586    |     -0.852       |      0.402829     |            |
>>>>>>> 98b1583cbad6302dc6afd8b4558537ea3a32960b
