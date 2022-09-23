sardines <- read.csv(file="sardines.csv")

# Calculate the population mean for Sardine Vertebrae in Alaska.
# Hint: use the subset() function to get only the data for Alaska.
alaskan_population <- subset(sardines, location ==1)
mean(alaskan_population$vertebrae)

# Calculate the population mean for Sardine Vertebrae in San Diego.
# Hint: use the subset() function to get only the data for San Diego.
san_diego_population <- subset(sardines, location ==2)
mean(san_diego_population$vertebrae)

# Calculate Independent (Two Sample) T-Test
t.test(alaskan_population$vertebrae, san_diego_population$vertebrae)
