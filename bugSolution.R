```R
# Improved code that handles cases where specified columns might be missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

# Use intersect to select only existing columns
cols_to_select <- intersect(cols_to_select, colnames(df))

#subset the data frame using the existing columns
subset_df <- df[, cols_to_select, drop = FALSE]

# print the result, handling cases where the result is empty
if (nrow(subset_df) > 0) {
  print(subset_df)
} else {
  print("No matching columns found.")
}
```