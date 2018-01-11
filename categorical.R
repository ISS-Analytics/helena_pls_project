data <- read.csv(file = "data/role stress data201710.csv")

summary(factor(data$jobtype))
#   1   2   3  99 
# 170   6  64   5 

# since job type 1 is the largest group, we will treat it as a reference group
data$jobtype_2 <- ifelse(data$jobtype == 2, 1, 0)
data$jobtype_3 <- ifelse(data$jobtype == 3, 1, 0)

summary(factor(data$loyal))
#  1   2   3  99 
# 54  63 122   6

# since loyal 3 is the largest group, we will treat it as a reference group
data$loyal_2 <- ifelse(data$jobtype == 2, 1, 0)
data$loyal_3 <- ifelse(data$jobtype == 3, 1, 0)

summary(factor(data$user))
#  1  2  3 99 
# 85 62 93  5 

# since user 3 is the largest group, we will treat it as a reference group
data$loytal_1 <- ifelse(data$jobtype == 1, 1, 0)
data$loytal_2 <- ifelse(data$jobtype == 2, 1, 0)

write.csv(data, file="data/helena_data_cleaned.csv")
