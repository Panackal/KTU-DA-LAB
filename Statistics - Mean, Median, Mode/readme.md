# Statistical Measures and Mode Calculation in R

## Problem Description

This R script performs several basic statistical analyses on a dataset, including:

1. **Mean**: Calculates the average of the data.
2. **Trimmed Mean with removing missing values**: Computes the mean after removing a specified percentage of extreme values.
3. **Median**: Finds the middle value when the data is sorted.
4. **Mode**: Defines and calculates the most frequent value in the dataset using a custom function.

---

## Working of Trimmed mean

Using ```data <- c(12, 2, 5, 45, 4, 5, 5)``` , the trimmed mean is calculated as follows:
1. **Sort the Data**: The sorted data is ```2, 4, 5, 5, 5, 12, 45```.
2. **Apply Trim**: With ```trim = 0.2``` , remove 20% of the values from each end (rounded to one value at each end).
   - Remove ```2``` (lowest) and ```45``` (highest), leaving ```4, 5, 5, 5, 12```.
3. Calculate Mean of Remaining Values:
Mean of ```4, 5, 5, 5, 12``` is ```(4 + 5 + 5 + 5 + 12) / 5 = 6.2```.
Thus, ```mean(data, trim = 0.2)``` outputs ```6.2```.

## Output
```
> source("~/.active-rstudio-document")
[1] "Mean :  11.1428571428571"
[1] "Trimmed Mean :  6.2"
[1] "Median : 5"
[1] "Mode :  5"

```

[Click here to view code](./Statistics%20-%20Mean%2C%20Median%2C%20Mode/statistics.r)
