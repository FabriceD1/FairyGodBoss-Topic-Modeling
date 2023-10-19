library(readxl)
library(tidyverse)
FGB_data <- read_csv("FairyGodBoss.csv")
attach(FGB_data)

view(FGB_data)

#Descriptives
#numeric variables
hist(Overall_job_satisfaction_score)
hist(Women_fair_equal_treatment)
hist(Would_recommend_to_other_women)
hist(CEO_support_gender_diversity)
hist(Flexibility_Avg)
hist(wl_hours)
hist(wl_culture)
hist(wL_policies)
hist(better_wlb_retain)
hist(paid_maternity)
hist(unpaid_maternity)

#categorical variables
unique(flexible_jobs)
unique(partime_jobs)
unique(work_from_home)
unique(CEO_Gender)
colnames(FGB_data)

#correlation matrix
#updating dataframe of my main variables
my_vars <- c("CEO_support_gender_diversity", "Would_recommend_to_other_women", "Women_fair_equal_treatment", 
             "Overall_job_satisfaction_score", "Flexibility_Avg")

my_vars2 <- c("Flexibility_Avg", "wl_hours", "wL_policies", "wl_culture", "Women_fair_equal_treatment", "CEO_support_gender_diversity", "Overall_job_satisfaction_score")

my_data <- FGB_data[, my_vars]
my_data2 <- FGB_data[, my_vars2]

library(apaTables)

apaTables::apa.cor.table(my_data, "cor.doc", table.number = 1)
cor(my_data)

apaTables::apa.cor.table(my_data2, "cor.doc", table.number = 1, filename = "ex3_cor_table.doc")
cor(my_data2)

#recoding into dummy variables
# Recode flexible_jobs
FGB_data$flexible_jobs_dummy <- ifelse(flexible_jobs == "Available", 0, 1)

# Recode flexible_jobs
FGB_data$work_from_home_dummy <- ifelse(work_from_home == "Available", 0, 1)

# Recode partime_jobs
FGB_data$partime_jobs_dummy <- ifelse(partime_jobs == "Available", 0, 1)

# Recode CEO_Gender
FGB_data$CEO_Gender_dummy <- ifelse(CEO_Gender == "yes", 0, 1)

# Compute summary statistics for each variable
summary(FGB_data)

#regression with only CEO support & fair treatment, job satisfaction as outcome
reg1<-lm(Overall_job_satisfaction_score ~Women_fair_equal_treatment+ CEO_support_gender_diversity, data=FGB_data)
summary(reg1)

#regression with CEO support & fair treatment , flexibility, flex job, part time jobs
reg2<-lm(Overall_job_satisfaction_score ~Women_fair_equal_treatment+ CEO_support_gender_diversity+Flexibility_Avg+flexible_jobs_dummy+partime_jobs_dummy, data=FGB_data)
summary(reg2)

#regression with would recommend to other women as an outcome
reg3<-lm(Would_recommend_to_other_women ~Women_fair_equal_treatment+CEO_support_gender_diversity+ Flexibility_Avg+ flexible_jobs_dummy+partime_jobs_dummy+paid_maternity, data=FGB_data)
summary(reg3)

#regression with only work life balance policies, hours, & culture, job satisfaction as outcome
reg4<-lm(Overall_job_satisfaction_score ~ wl_hours + wL_policies + wl_culture + Flexibility_Avg, data=FGB_data)
summary(reg4)

#regression with only work life balance policies, hours, & culture, retention as outcome
reg5<-lm(better_wlb_retain ~ wl_hours + wL_policies + wl_culture + Flexibility_Avg, data=FGB_data)
summary(reg5)

#regression with only work life balance policies, hours, & culture, retention as outcome
reg6<-lm(Would_recommend_to_other_women ~ wl_hours + wL_policies + wl_culture + Flexibility_Avg, data=FGB_data)
summary(reg6)

##mediation to test if Flexibility mediates the relationship between CEO_support and Overall_job_satisfaction
# Load the mediation package
library(mediation)

model <- lm(Overall_job_satisfaction_score ~ CEO_support_gender_diversity+ Flexibility_Avg, data = FGB_data)
mediator <- lm(CEO_support_gender_diversity ~Flexibility_Avg, data = FGB_data)
med.model<- mediate(mediator, model, treat ="Flexibility_Avg", mediator ="CEO_support_gender_diversity", verbose = TRUE)
# Print the mediation results
summary(med.model)

model <- lm(Overall_job_satisfaction_score ~ Women_fair_equal_treatment+ Flexibility_Avg, data = FGB_data)
mediator <- lm(Women_fair_equal_treatment~ Flexibility_Avg, data = FGB_data)
med.model<- mediate(mediator, model, treat ="Flexibility_Avg", mediator ="Women_fair_equal_treatment", verbose = TRUE)
# Print the mediation results
summary(med.model)

model <- lm(Overall_job_satisfaction_score ~ wl_hours + Flexibility_Avg, data = FGB_data)
mediator <- lm(wl_hours ~ Flexibility_Avg, data = FGB_data)
med.model<- mediate(mediator, model, treat ="Flexibility_Avg", mediator ="wl_hours", verbose = TRUE)
# Print the mediation results
summary(med.model)

model <- lm(Overall_job_satisfaction_score ~ wL_policies + Flexibility_Avg, data = FGB_data)
mediator <- lm(wL_policies ~ Flexibility_Avg, data = FGB_data)
med.model<- mediate(mediator, model, treat ="Flexibility_Avg", mediator ="wL_policies", verbose = TRUE)
# Print the mediation results
summary(med.model)

model <- lm(Overall_job_satisfaction_score ~ wl_culture + Flexibility_Avg, data = FGB_data)
mediator <- lm(wl_culture ~ Flexibility_Avg, data = FGB_data)
med.model<- mediate(mediator, model, treat ="Flexibility_Avg", mediator ="wl_culture", verbose = TRUE)
# Print the mediation results
summary(med.model)

model2 <- lm(Overall_job_satisfaction_score ~ Women_fair_equal_treatment + Flexibility_Avg, data = FGB_data)
mediator2 <- lm(Women_fair_equal_treatment ~ Flexibility_Avg, data = FGB_data)
med.model2 <- mediate(mediator2, model2, treat ="Flexibility_Avg", mediator ="Women_fair_equal_treatmen", verbose = TRUE)
# Print the mediation results
summary(med.model2)












##mediation to test if Flexibility mediates the relationship between CEO_support and Overall_job_satisfaction
# Load the mediation package

model1 <- lm(Would_recommend_to_other_women ~  wl_hours + wL_policies + wl_culture + Flexibility_Avg + CEO_support_gender_diversity, data = FGB_data)
mediator1 <- lm(Flexibility_Avg ~ CEO_support_gender_diversity, data = FGB_data)
med.model1<- mediate(mediator, model1, treat ="Flexibility_Avg", mediator ="CEO_support_gender_diversity", verbose = TRUE)
# Print the mediation results
summary(med.model1)

model2 <- lm(Overall_job_satisfaction_score ~  wl_hours + wL_policies + wl_culture + Flexibility_Avg + CEO_support_gender_diversity, data = FGB_data)
summary(model2)
apa.reg.table(model2)

model2 <- lm(Overall_job_satisfaction_score ~  wl_hours + wL_policies + wl_culture + Women_fair_equal_treatment + CEO_support_gender_diversity + Flexibility_Avg , data = FGB_data)
summary(model2)
mediator2 <- lm(CEO_support_gender_diversity ~ Flexibility_Avg, data = FGB_data)
med.model2<- mediate(mediator, model2, treat = "Flexibility_Avg", mediator ="CEO_support_gender_diversity", verbose = TRUE)
# Print the mediation results
summary(med.model2)


#moderation analysis: To test if the effect of Flexibility_Avg on Recommending to other women is moderated by hours (signficant interation)
moderation_model <- lm(Would_recommend_to_other_women ~ Flexibility_Avg * wl_hours, data = FGB_data)
summary(moderation_model)

#moderation analysis: To test if the effect of Flexibility_Avg on Recommending to other women is moderated by policies (non significant interaction)
moderation_model <- lm(Would_recommend_to_other_women ~ Flexibility_Avg * wL_policies, data = FGB_data)
summary(moderation_model)

#moderation analysis: To test if the effect of Flexibility_Avg on Recommending to other women is moderated by culture (non sig interaction)
moderation_model <- lm(Would_recommend_to_other_women ~ Flexibility_Avg * wl_culture, data = FGB_data)
summary(moderation_model)

#moderation analysis: To test if the effect of Flexibility_Avg on Recommending to other women is moderated by hours (signficant interation)
moderation_model <- lm(Would_recommend_to_other_women ~ wl_hours + wL_policies + wL_policies + wL_policies*flexible_jobs, data=FGB_data)
summary(moderation_model)

