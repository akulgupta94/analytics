
#vectors ----- 4-dashes create a bookmark which can be seen on the right side of this screen

x=1:10 #create sequence of nos 1 to 10
x
(x1 <- 1:20) #assigns and prints in the same command

(x1=1:30)
(x2=c(1,2,13,4,5))


x3=c('a','ABC')
x3
class (x3)
(X3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a',"Henry",4))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
class(c(3,5)) #SAVES AS float
class(c(3L,5L)) #saves as integer

x5a=c(3,5)
class(x5a)
(x5b=c(1,'a',T,4L))
class(x5b)

#access elements
(x6=seq(0,100,by=2))
seq(0,100,3) #takes value as 0=start 100=end 3=by
seq(100,0,3) #error as values in incorrect sequence
seq(to=100,from=0,3) #correct way if incorrect sequence
seq()
seq(1)
methods(class='numeric')
?seq

ls()
x6
length(x6)

x6[20] #access 20th eement
x6[3] #access 3rd value
x6[c(2,4)] #access 2nd and 3rd value
x6[10:20] #access all values from 10th to 20th
x6[-1] #access all but 1st element
x6[-c(1:10, 15:20)] #ALL these are temporary removals not removed fromactual variable
x6[c(2.4,3.54)] #real nos are truncated to integers

x6[x6>30 & x6<40]

x6[-(length(x6)-1)] #remove the 2nd last symbol

#modify
x6
(x6=sample(1:50))#pick randomly arranged from 1-50
sort(x6)
sort(x6[-c(1,2)])

sum(x6[x6>30 & x6<40])

x6[2] <- 99;
x6[2:10] <- 99; x6

x6[x6>30 & x6<40] = 999
x6
x6[2:10] <- 99; x6

(x=seq(1,5,length.out=15)) #tells values of points when 15 equal divisions are done

x=NULL
x

(x=rnorm(1000000)) #central tendency theorm, more the no the values more perfect the normal curve
?rnorm
plot(density(x))

abline(v=c(-3,0,3))
mean(x)

(x1=rnorm(1000000,mean=50,sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)
hist(x1)
hist(x1,freq=2)
hist(x1,freq=5)
plot(density(x1))
hist(x1,freq=F)
lines(density(x1),col=2) #freq done to F to map lines on hist 

#matrix -----
100:111



length(100:111)
(m1=matrix(100:111, nrow=4)) #automatically makes 3 colums as 12 elements
(m2=matrix(100:111, ncol=3, byrow=T)) #row wise
m1[1,];m1[,1]
m1[1,2:3] #1st row 2-3 columns shown
m1[c(1,3),1]
m1[,-c(1,3)]
m1[m1>105 & m1<108]

#name of cols and rows
m1

paste("C","D",sep="-")
paste("c",1:100,sep="-")

(colnames(m1)= paste('C',1:3,sep="-"))
(rownames(m1)= paste('R',1:3,sep="-"))
#missing part ask someone

m2
cbind(m2,m2) #combining matrices COLUMN BIND when rown number same
rbind(m2,m2)

colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)

t(m1) #transpose

m1
sweep(m1,MARGIN=1,STATS=c(2,3,4,5), FUN="+") #rowwise
sweep(m1,MARGIN=2,STATS=c(2,3,4), FUN="*")

?addmargins
addmargins(m1,1,mean) #colwise function
addmargins(m1,margin=1,sum) #col

addmargins(m1,2,sum) #row
addmargins(m1,c(1,2),mean)

#dataframe ----
#create vectors to be combined into DF
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
#setseed(1234) see this command too
(gender=sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
#table(gender)
#prop.table(table(gender))
(marks1=floor(rnorm(30,mean=50,sd=10))) #floor ceiling round truncate
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30, replace=T,prob=c(.5,.5)))
rollno;sname;gender
marks1;marks2;course

#create DF
df1=data.frame(rollno,sname,gender,marks1,marks2,course, stringsAsFactors=F) #factors become categories in R but we dont want name to be a catagory, gender is fine. so we put F
str(df1) #structure of DF
head(df1) #top 6 rows
tail(df1) #bot 6 rows
class(df1) #DF
summary(df1) #summary
df1
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)

df1 #full data
df1$gender #one column
head(df1[,c(2,4)]) #multiple columns
df1[1:10,] #select rows, all columns
df1[1:5,1:4] #as per condition

df1[marks1>50 & gender=="F", c('rollno','sname')]
df1[marks1>50 & gender=="F",]
df1[marks1>50 & gender=="F",c(1,2)]

aggregate(df1$marks1, by=list(df1$gender), FUN=max)
aggregate(df1$marks1, by=list(df1$gender, df1$course), FUN=sum)
aggregate (marks1 ~ gender,data=df1,FUN=max)
aggregate(cbind(marks1,marks2)) - gender,data=df1, FUN=max)
(df2=aggregate())








#factors ----
