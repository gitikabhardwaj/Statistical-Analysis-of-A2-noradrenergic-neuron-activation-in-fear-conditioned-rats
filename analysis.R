DbH = read.csv("DbH.csv")
t_test_result1 <- t.test(Total...DbH ~ Re.exposure, data = DbH)
print(t_test_result1)
t_test_result2 <- t.test(DbH$Total...DbH ~ DbH$Re.exposure)
print(t_test_result2)
power_analysis <- pwr.t.test(n = 31, d = 0.75, sig.level = 0.05, alternative = "greater")
print(power_analysis)
df <- ifelse(t_test_result1$parameter[["df"]] > 0, t_test_result1$parameter[["df"]], t_test_result2$parameter[["df"]])

group1_data <- DbH$Total...DbH[DbH$Re.exposure == "Dark"]
group2_data <- DbH$Total...DbH[DbH$Re.exposure == "HC"]

pooled_sd <- sqrt(((df - 1) * var(group1_data) + (df - 1) * var(group2_data)) / (2 * df - 2))

mean_group1 <- mean(group1_data)
mean_group2 <- mean(group2_data)
effect_size <- abs(mean_group1 - mean_group2) / pooled_sd
print(effect_size)
boxplot(Total...DbH ~ Re.exposure, data = DbH,
        main = "Boxplot of Total % DbH by Re-exposure",
        xlab = "Re-exposure Group", ylab = "Total % DbH",
        col = c("lightblue", "salmon"))
lm_result <- lm(Total...DbH ~ Caudal + AP + Rostral, data = DbH)
summary(lm_result)
plot(DbH$Caudal, DbH$Total...DbH,
     main = "Regression Analysis: Total % DbH vs. Caudal",
     xlab = "Caudal", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total...DbH ~ Rostral, data = DbH), col = "red")
plot(DbH$Caudal, DbH$Total...DbH,
     main = "Regression Analysis: Total % DbH vs. Rostal",
     xlab = "Rostal", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total...DbH ~ Rostral, data = DbH), col = "red")
plot(DbH$AP, DbH$Total...DbH,
     main = "Regression Analysis: Total % DbH vs. Area Postrema",
     xlab = "Area Postrema", ylab = "Total % DbH",
     pch = 19, col = "blue")
abline(lm(Total...DbH ~ AP, data = DbH), col = "red")