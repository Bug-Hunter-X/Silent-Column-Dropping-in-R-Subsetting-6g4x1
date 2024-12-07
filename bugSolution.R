```r
# Improved subsetting code that checks for the existence of columns.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "E")

# Check if all columns exist before subsetting
missing_cols <- setdiff(cols_to_select, names(df))
if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
  # Handle the missing columns appropriately.  You might:
  # 1. Stop execution: stop("Missing required columns")
  # 2. Return NULL or an empty data frame
  # 3. Proceed with only the existing columns
  cols_to_select <- intersect(cols_to_select, names(df))
}

subset_df <- df[, cols_to_select, drop = FALSE]
```