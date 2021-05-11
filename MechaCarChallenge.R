library(dplyr)


# Deliverable 1
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


model <- lm(
  mpg ~ vehicle_length + 
    vehicle_weight + 
    spoiler_angle + 
    ground_clearance + 
    AWD, 
  MechaCar_mpg) #create linear model

summary_model <- summary(model) #summarize linear model



# Deliverable 2
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% 
  summarize(Mean=mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),)

lot_summary <- Suspension_Coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD=sd(PSI),)


# Deliverable 3

t.test(Suspension_Coil$PSI,mu=1500) #compare sample versus population means


t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI,mu=1500) #compare sample versus population means
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI,mu=1500) #compare sample versus population means
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI,mu=1500) #compare sample versus population means

