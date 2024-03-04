library(haven)
library(multcomp)
library(car)
library(ggplot2)
library(lmtest)
library(estimatr)
library(moments)
library(corrplot)
library(Hmisc)
library(ggplot2)
library(writexl)
library(lme4)
library(plm)
library(fixest)
library(foreign)
# load the data
data_gun<- read_dta("/Users/dinu/Desktop/project/guns.dta")
write.csv(data_gun, file = "data_gun.csv", row.names = FALSE)
write_xlsx(data_gun, path = "data_gun.xlsx")
#checking how many rows and columns are present in the data
nrow(data_gun)
ncol(data_gun)
head(data_gun)
# checking names of columns
names(data_gun)
#checking if there are null values
sum(is.na(data_gun))
#checking class of variables
sapply(data_gun, class)
#summary statistics of data
summary(data_gun)
data.frame(mean = sapply(data_gun, mean), median = sapply(data_gun, median), min = sapply(data_gun, min), max = sapply(data_gun, max), sd = sapply(data_gun, sd),  q3 = sapply(data_gun, function(x) quantile(x, 0.75)))
#convert the variable to factor
data_gun$shall <- as.factor(data_gun$shall)
data_gun$stateid <- as.factor(data_gun$stateid)
# statistics for Viloent crime
boxplot(data_gun$vio)
skewness(data_gun$vio)
hist(data_gun$vio, main = "Violent crime ", xlab = "Violent crime rate", ylab = "Frequency",breaks = 50)
# statistics for murder crime
boxplot(data_gun$mur)
skewness(data_gun$mur)
hist(data_gun$mur, main = "murder crime ", xlab = "murder crime rate", ylab = "Frequency",breaks = 50)
# statistics for Robbery crime
boxplot(data_gun$rob)
skewness(data_gun$rob)
hist(data_gun$rob, main = "Robbery crime ", xlab = "Robbery crime rate", ylab = "Frequency",breaks = 50)
# statistics for incarceration rate
boxplot(data_gun$incarc_rate)
skewness(data_gun$incarc_rate)
hist(data_gun$rob, main = "incarceration rate ", xlab = "incarceration rate", ylab = "Frequency",breaks = 50)
# statistics for density
boxplot(data_gun$density)
skewness(data_gun$density)
hist(data_gun$density, main = "Density ", xlab = "Density", ylab = "Frequency",breaks = 100)
# statistics for real per capita income
boxplot(data_gun$avginc)
skewness(data_gun$avginc)
hist(data_gun$avginc, main = "per capita personal income in states ", xlab = "per captia income", ylab = "Frequency",breaks = 100)
# statistics for percentage of state popoulation 
boxplot(data_gun$pop)
skewness(data_gun$pop)
hist(data_gun$pop, main = " state popoulation  ", xlab = "population ", ylab = "Frequency",breaks = 100)
# statistics for percentage of state popoulation that is male between 10 to 29
boxplot(data_gun$pm1029)
skewness(data_gun$pm1029)
hist(data_gun$pm1029, main = "percentage of state popoulation that is male between 10 to 29 ", xlab = "percentage ", ylab = "Frequency",breaks = 100)
#statistics for percentage of state popoulation that is white between 10 to 64
boxplot(data_gun$pw1064)
skewness(data_gun$pw1064)
hist(data_gun$pw1064, main = "percentage of state popoulation that is white between 10 to 64", xlab = "percentage ", ylab = "Frequency",breaks = 100)
#statistics for percentage of state popoulation that is black between 10 to 64
boxplot(data_gun$pb1064)
skewness(data_gun$pb1064)
hist(data_gun$pb1064, main = "percentage of state popoulation that is black between 10 to 64 ", xlab = "percentage of male", ylab = "Frequency",breaks = 100)
#statistics for percentage of state popoulation that is black between 10 to 64
boxplot(data_gun$year)
skewness(data_gun$year)
hist(data_gun$year, main = "year", xlab = "year", ylab = "Frequency",breaks = 100)

# violence rate vs year for each state
ggplot(data_gun, aes(x = year, y = vio, fill = as.factor(stateid))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "Violence Rate") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
# murder rate vs year for each state
ggplot(data_gun, aes(x = year, y = mur, fill = as.factor(stateid))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "Murder Rate") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
# Robbery rate vs year for each state
ggplot(data_gun, aes(x = year, y = rob, fill = as.factor(stateid))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(y = "Robbery Rate") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

#Correlation
data_without_stateid_shall <- subset(data_gun, select = -c(stateid,shall))
correlation<-cor(data_without_stateid_shall)

corrplot(correlation, method = "color", type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45, diag = FALSE,addCoef.col = "black")

#plot of violence rate with different variables
plot(data_gun$vio~data_gun$incarc_rate)
plot(data_gun$vio~data_gun$avginc)
plot(data_gun$vio~data_gun$pop)
plot(data_gun$vio~data_gun$density)
plot(data_gun$vio~data_gun$pb1064)
plot(data_gun$vio~data_gun$pm1029)
plot(data_gun$vio~data_gun$pw1064)

# new coulmn with sumationof violonce,murder,robbery
data_gun$total_vio<-data_gun$vio+data_gun$mur+data_gun$rob
# transformation of total violance to log form
data_gun$ln_total_vio<-log(data_gun$total_vio)
hist(data_gun$ln_total_vio, main = "log of total violence rate", xlab = "year", ylab = "Frequency",breaks = 100)



#Regression model for reference
#regression for vio
model1<-lm(data_gun$vio ~ data_gun$year+data_gun$shall+data_gun$incarc_rate+data_gun$pb1064+data_gun$pw1064+data_gun$pm1029+data_gun$pop+data_gun$avginc+data_gun$density+data_gun$stateid , data=data_gun)
summary(model1)
#regression for mur
model2<-lm(data_gun$mur ~ data_gun$year+data_gun$shall+data_gun$incarc_rate+data_gun$pb1064+data_gun$pw1064+data_gun$pm1029+data_gun$pop+data_gun$avginc+data_gun$density+data_gun$stateid , data=data_gun)
summary(model2)
#regression for rob
model3<-lm(data_gun$rob ~ data_gun$year+data_gun$shall+data_gun$incarc_rate+data_gun$pb1064+data_gun$pw1064+data_gun$pm1029+data_gun$pop+data_gun$avginc+data_gun$density+data_gun$stateid , data=data_gun)
summary(model3)
#regression for total violence
model4<-lm(data_gun$total_vio ~ data_gun$year+data_gun$shall+data_gun$incarc_rate+data_gun$pb1064+data_gun$pw1064+data_gun$pm1029+data_gun$pop+data_gun$avginc+data_gun$density+data_gun$stateid , data=data_gun)
summary(model4)

#Stae id=11 is a outlier In order to have better analysis we have excluded the stateid =11
data_gun_without11 <- subset(data_gun, !(data_gun$stateid %in% c(11)))

model5<-lm(data_gun$ln_total_vio ~ data_gun$year+data_gun$shall+data_gun$incarc_rate+data_gun$pb1064+data_gun$pw1064+data_gun$pm1029+data_gun$pop+data_gun$avginc+data_gun$density+data_gun$stateid , data=data_gun)
summary(model5)
# Check for collinearity in the variables
vif_results <- vif(lm(vio ~ incarc_rate + pb1064 + pw1064 + pm1029 + pop + avginc + density, data = data_gun))

# Display the VIF results
print(vif_results)
names_arg <- colnames(vif_results)

# Create a barplot with all names displayed
barplot(vif_results, col = "lightblue", main = "Variance Inflation Factor (VIF)", ylab = "VIF Value", names.arg = names_arg, las = 2)
#Check for endogeneity in the data
ols_model <- lm(vio ~ incarc_rate + pb1064 + pw1064 + pm1029 + pop + avginc + density, data = data_gun)
fitted_values <- predict(ols_model)
residuals <- residuals(ols_model)
# Create the residual plot
plot(predict(ols_model), residuals(ols_model), main = "Fitted Values vs. Residuals",
     xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "grey", lty = 2)  # Add a horizontal line at y=0
# You can also add a smoother line (loess line) to help identify trends
lines(lowess(fitted_values, residuals), col = "red")

#pooled ols
options(scipen = 5)
model1_ols <- plm(ln_total_vio ~ shall+incarc_rate+pm1029+pop+avginc+density,data = data_gun_without11,model ="pooling",index = c("stateid","year"))
summary(model1_ols)
model2_ols <- plm(ln_total_vio ~ shall+incarc_rate+pm1029+pop+density,data = data_gun_without11,model ="pooling",index = c("stateid","year"))
summary(model2_ols)

model3_ols <- plm(ln_total_vio ~ shall+incarc_rate+I(incarc_rate^2)+pm1029+pop+I(pop^2)+density+I(density^2),data = data_gun_without11,model ="pooling",index = c("stateid","year"))
summary(model3_ols)

#Entity fixed effect model
pmdata<-pdata.frame(data_gun_without11, index = c("stateid","year"))
model1_fe <- plm(ln_total_vio ~ shall+incarc_rate+pm1029+pop+avginc+density,data=pmdata, model ="within",index = c("stateid","year"))
summary(model1_fe)

#add squared terms of incarc_rate, pop,avginc as they have reducing effect.
model2_fe <- plm(ln_total_vio ~ shall +incarc_rate+I(incarc_rate^2)+pop+I(pop^2)+pm1029+density+I(density^2)+avginc+I(avginc^2),data=pmdata, model = "within",index = c("stateid","year"))
summary(model2_fe)

model3_fe <- plm(ln_total_vio ~ shall+pm1029+density+avginc+I(avginc^2),data=pmdata,model = "within",index = c("stateid","year"))
summary(model3_fe)


#Entity and Time fixed effects model
model1_fet <- plm(ln_total_vio ~ shall+incarc_rate +pm1029 + pop + avginc + density,data=pmdata, model = "within", index = c("stateid", "year"), effect = "twoways")
summary(model1_fet)


model2_fet <- plm(ln_total_vio ~ shall+pm1029+density+avginc+I(avginc^2),data = pmdata, model = "within", index = c("stateid", "year"), effect = "twoways")
summary(model2_fet)

#test
Fe_test <- pFtest(model2_fet,model3_fe)
print(Fe_test)





