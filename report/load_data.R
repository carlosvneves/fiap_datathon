library(tidyverse)
library(arrow)
library(ggplot2)



df <- read_parquet("data/data_clean_0.parquet")
df |> head()

df_pooled <- read_parquet("data/data_pooled_0.parquet")
df_pooled |> head()

# select a random sample of 100 rows
df_sample <- df_pooled |> sample_n(100)

head(df_sample)

df_sample |> write_csv("data/data_sample_pooled.csv")

# número de dados nulos por coluna
df_pooled |> is.na() |> colSums()
df_pooled |> summary()
