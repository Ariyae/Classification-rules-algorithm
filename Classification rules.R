#Classification rules (1R and ripper algorithm) on mushrooms dataset.

data<-read.csv(file.choose(),header=T)
View(data)
summary(data)
str(data)
data$VeilType<-NULL
data$RingNumber<-NULL
prop.table(table(data$Class))*100
install.packages("RWeka")
library(RWeka)
mushroom_1R <- OneR(Class ~ .,data= data)
mushroom_1R
summary(mushroom_1R)
#Improving model performance
mushroom_ripper <- JRip(Class ~ .,data= data)
mushroom_ripper
summary(mushroom_ripper)
