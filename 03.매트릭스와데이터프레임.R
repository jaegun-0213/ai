a <- matrix(1:20,4,5)
a
b <- matrix(21:40,4,5)
b
2*a
b-5
a+b
b/a
a*b

class(iris)
class(state.x77)
class(lh)

is.matrix(iris)
is.data.frame(iris)

st <- data.frame(state.x77)
class(st)
class(iris)
as.im<- as.matrix(iris[,-5])
as.im
class(as.im)

# 열추출
class(iris)
iris[,'Species'] # 열이름으로 검색가능

head(state.x77)
state.x77[,'Area'] # 열이름으로 검색가능

iris[ , 5] # 인덱스로 검색 가능
state.x77[,8]

iris['Species']

iris[5]
state.x77[8]

iris$Species
#state.x77Area 에러


name <- c('Tom','Jane','Nick') 
age <- c(20,23,26)
gender <- c('M','F','M')
height <- c(180,160,175)
student <- c(T,T,T)
human <- data.frame(name,age,gender,height,student)
human
human.new<- list('Mary',24,'F',155,T)
human<- rbind(human,human.new)
human
str(human)

mean(human[, 'age'])
mean(human[,'height'])

colnames(human[-4])

table(human$gender)


#파일 불러오기
setwd("D:/ai/study/R_study") #파일 불러올 경로명
air <- read.csv('airquality.csv')
air
class(air)

air2 <- read.csv('D:/ai/study/R_study/airquality.csv')
air2
air2['Ozone']

air3 <- read.csv(file.choose())
head(air3)

iris.setosa <- subset(iris,Species == 'setosa')
write.csv(iris.setosa, 'irisfilename.csv')

write.csv(iris.setosa, 'irisfile1.csv',row.names = F)

write.csv(iris.setosa, file.choose())
