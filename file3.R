#dataframe----
(rollno = 1:30)
(sname = paste('student',1:30,sep =''))
(gender= sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks1= floor(rnorm(30, mean=50, sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course= sample(c("MBA", "BBA"), size=30, replace=T, prob=c(.7,.3)))

df1=data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
str(df1)
head(df1)
tail(df1)
class(df1)
nrow(df1)
dim(df1)
summary(df1)
df1$gender = factor(df1$gender)
df1$course= factor(df1$course)
str(df1)
summary(df1)
boxplot(marks1)
boxplot(marks1 ~ gender + course, data=df1)
df1
df1$gender
head(df1[ ,c(2,4)])
tail(df1[ ,c(2,4)])
df1[marks1>50 & gender=='F',c(1,2)]
df1[marks1>50 | gender=='F', ]

names(df1)
dim(df1)
aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggreagte(marks1 ~ gender, data=df1, FUN=max)


(grades= sample(c('A','B','C','D'), size= 30, replace= T, prob=c(.3,.2,.4,.1)))
summary(grades)
table(grades)
gradesFactor= factor(grades)
