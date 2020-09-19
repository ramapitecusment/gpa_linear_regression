setwd("E:\\Desktop\\2\\GitProjects\\R\\DS-1\\gpa_linear_regression")
#working_directory <- paste0(getwd(), "/gpa_linear_regression.csv")

G <- read.csv("gpa_linear_regression.csv", row.names = NULL)
str(G)

gpa <- G$GPA
hours <- G$Hours
free <- G$Free_time
ent <- G$ENT
books <- G$Books
dev <- G$Self.development

plot(hours, gpa, xlab = "Hours spent on homework", ylab = "", 
cex.lab = 1.5, cex = 1.5, 
col = "red", pch = 19)
title(ylab = "GPA of Students", line = 2.5, cex.lab = 1.5)
abline(a = mean(gpa), b = 0, lwd = 3)
abline(lsfit(hours, gpa), lwd = 3, col = "red")


plot(free, gpa, xlab = "Hours spent on Freetime", ylab = "", 
cex.lab = 1.5, cex = 1.5, 
col = "darkgreen", pch = 19)
title(ylab = "GPA of Students", line = 2.5, cex.lab = 1.5)
abline(a = mean(gpa), b = 0, lwd = 3)
abline(lsfit(free, gpa), lwd = 3, col = "darkgreen")
a <- lsfit(free, gpa)
a$coefficients

plot(ent, gpa, xlab = "Scores of ENT", ylab = "", 
cex.lab = 1.5, cex = 1.5, 
col = "orange", pch = 19)
title(ylab = "GPA of Students", line = 2.5, cex.lab = 1.5)
abline(a = mean(gpa), b = 0, lwd = 3)
abline(lsfit(ent, gpa), lwd = 3, col = "orange")

plot(books, gpa, xlab = "Amount of book at home", ylab = "", 
cex.lab = 1.5, cex = 1.5, 
col = "blue", pch = 19)
title(ylab = "GPA of Students", line = 2.5, cex.lab = 1.5)
abline(a = mean(gpa), b = 0, lwd = 3)
abline(lsfit(books, gpa), lwd = 3, col = "blue")
a <- lsfit(books, gpa)
a$coefficients

plot(dev, gpa, xlab = "Hours spent on Self-development", ylab = "", 
cex.lab = 1.5, cex = 1.5, 
col = "red", pch = 19)
title(ylab = "GPA of Students", line = 2.5, cex.lab = 1.5)
abline(a = mean(gpa), b = 0, lwd = 3)
abline(lsfit(dev, gpa), lwd = 3, col = "darkgreen")

TSS <- sum((gpa - mean(gpa))^2)

model1 <- lm(GPA ~ Hours, data = G)
R2.m1 <- 1 - (sum((model1$residuals)^2)/TSS)
model2 <- lm(GPA ~ Free_time, data = G)
R2.m2 <- 1 - (sum((model2$residuals)^2)/TSS)
model3 <- lm(GPA ~ Books, data = G)
R2.m3 <- 1 - (sum((model3$residuals)^2)/TSS)
model4 <- lm(GPA ~ ENT, data = G)
R2.m4 <- 1 - (sum((model4$residuals)^2)/TSS)
model5 <- lm(GPA ~ Self.development, data = G)
R2.m5 <- 1 - (sum((model5$residuals)^2)/TSS)

cat("R2 for Hours is", R2.m1, "\n")
cat("R2 for Freetime is", R2.m2, "\n")
cat("R2 for Books", R2.m3, "\n")
cat("R2 for ENT is", R2.m4, "\n")
cat("R2 for Self-development is", R2.m5, "\n")

model6 <- lm(GPA ~ Free_time  + ENT + Self.development + Hours + Books, data = G)
summary(model6)

cor(G)

t <- read.csv("gpa_linear_regression_test.csv")
predictTest <- predict(model6, newdata = t)

RSS <- sum((t$GPA - predictTest)^2)
TSS <- sum((t$GPA - mean(G$GPA))^2)

R2 <- 1 - RSS/TSS
R2

model1 <- lm(GPA ~ Self.development, data = G)
model2 <- lm(GPA ~ Self.development + Free_time, data = G)
model3 <- lm(GPA ~ Self.development + Hours, data = G)
model4 <- lm(GPA ~ Self.development + Free_time + Hours + ENT, data = G)
model5 <- lm(GPA ~ Self.development + Free_time + Hours + ENT + Books, data = G)

summary(model3)
predictTest <- predict(model3, newdata = t)

RSS <- sum((t$GPA - predictTest)^2)
TSS <- sum((t$GPA - mean(G$GPA))^2)

R2 <- 1 - RSS/TSS
R2
cor(G)
