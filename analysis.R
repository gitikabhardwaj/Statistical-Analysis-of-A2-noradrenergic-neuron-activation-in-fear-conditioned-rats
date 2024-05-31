# Activation Patterns of A2 Noradrenergic Neurons in Fear-Conditioned Rats
# Load the dataset containing dopamine β-hydroxylase (DbH) neuron activation data
DbH = read.csv("DbH.csv")

# Perform a t-test comparing DbH activation between different re-exposure groups
t_test_result1 <- t.test(Total_DbH ~ Re.exposure, data = DbH)
print(t_test_result1)

# Another method to perform the same t-test using a slightly different syntax
t_test_result2 <- t.test(DbH$Total_DbH ~ DbH$Re.exposure)
print(t_test_result2)

# Conduct a power analysis for the t-test to determine the study's power to detect an effect
power_analysis <- pwr.t.test(n = 31, d = 0.75, sig.level = 0.05, alternative = "greater")
print(power_analysis)

# Calculate degrees of freedom for pooled standard deviation, using the first t-test result or the second if the first is not available
df <- ifelse(t_test_result1$parameter[["df"]] > 0, t_test_result1$parameter[["df"]], t_test_result2$parameter[["df"]])

# Split the data into groups based on the 'Re.exposure' factor
group1_data <- DbH$Total_DbH[DbH$Re.exposure == "Dark"]
group2_data <- DbH$Total_DbH[DbH$Re.exposure == "HC"]

# Calculate pooled standard deviation across both groups
pooled_sd <- sqrt(((df - 1) * var(group1_data) + (df - 1) * var(group2_data)) / (2 * df - 2))

# Calculate means for each group and the effect size between them
mean_group1 <- mean(group1_data)
mean_group2 <- mean(group2_data)
effect_size <- abs(mean_group1 - mean_group2) / pooled_sd
print(effect_size)

# Create a boxplot visualizing the percentage of DbH activation across different re-exposure groups
boxplot(Total_DbH ~ Re.exposure, data = DbH,
        main = "Boxplot of Total % DbH by Re-exposure",
        xlab = "Re-exposure Group", ylab = "Total % DbH",
        col = c("lightblue", "salmon"))

# Run a linear regression analysis predicting DbH activation from different brain regions
lm_result <- lm(Total_DbH ~ Caudal + AP + Rostral, data = DbH)
summary(lm_result)

# Plot the relationship between Caudal region activation and total DbH activation
plot(DbH$Caudal, DbH$Total_DbH,
     main = "Regression Analysis: Total % DbH vs. Caudal",
     xlab = "Caudal", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total_DbH ~ Rostral, data = DbH), col = "red")

# Repeat the plot for Rostral region (correcting a typo in the xlab)
plot(DbH$Caudal, DbH$Total_DbH,
     main = "Regression Analysis: Total % DbH vs. Rostral",
     xlab = "Rostral", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total_DbH ~ Rostral, data = DbH), col = "red")

# Plot the relationship between Area Postrema (AP) activation and total DbH activation
plot(DbH$AP, DbH$Total_DbH,
     main = "Regression Analysis: Total % DbH vs. Area Postrema",
     xlab = "Area Postrema", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total_DbH ~ AP, data = DbH), col = "red")
