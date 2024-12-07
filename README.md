# Silent Column Dropping in R Subsetting

This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors.  When you attempt to select columns that do not exist, R silently drops the non-existent columns without issuing a warning or error. This can lead to unexpected behavior and difficult-to-debug issues, especially in larger, more complex scripts.

The `bug.R` file contains the buggy code. The `bugSolution.R` file shows how to use more robust methods to prevent this issue.

This issue is particularly problematic because it can lead to errors that are hard to identify. A simple check for missing columns before attempting the subset operation is the solution.