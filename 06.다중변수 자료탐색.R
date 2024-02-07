month=1:12
late1=c(5,8,7,9,4,6,12,13,8,6,6,4)
late2=c(4,6,5,8,7,8,10,11,6,5,7,3)
late3=c(1,4,8,2,4,3,2,3,2,0,1,3)

plot(month, late1, main = '월별 지각학생 수',
     type='b', col='red', xlab = '월', ylab = '지각인원수', ylim = c(1,15))
lines(month, late2, type = 'b', col='blue')
lines(month, late3, type = 'b', col='green')

# 분석할 내용
# 미국 보스턴 지역의 주택가격 정보와 주택가격에 영향을 미치는 요인 분석하기

# 1. 자료 가져오기
install.packages('mlbench') #패키지 다운 받기
library(mlbench) #다운받은 자료를 사용할 수 있게 열어주기
data("BostonHousing") #라이브러리에 있는 여러 데이터셋 중 한 개를 사용하기

# 자료의 기본 모습 검색하기
BostonHousing
head(BostonHousing)
class(BostonHousing)
dim(BostonHousing)
str(BostonHousing)

# 2. 분석할 데이터셋 준비
myds <- BostonHousing[,c('crim','rm','dis','tax','medv')]
head(myds)

# 필요한 변수 만들기
grp <- c()
for (i in 1:nrow(myds)) {
  if(myds$medv[i] >= 25.0) {
    grp[i] <- 'H'
  } else if(myds$medv[i] <= 17.0) {
    grp[i] <- 'L'
  } else {
    grp[i] <- 'M'
  }
}

head(grp)
class(grp)
grp <- factor(grp) # 문자형 자료를 범주형 자료(factor)로 형 변환: 알파벳 순서대로 만들어짐
class(grp)
head(grp)
grp <- factor(grp, levels = c('H','M','L')) #factor의 순서를 사용자가 정의하기
head(grp)

head(myds)
myds <- data.frame(myds, grp)
head(myds)

# 3. 기본적 내용 파악
str(myds)
head(myds)
table(myds$grp)


# 4. 차트를 그려서 분석 (실제값으로 해석하기)
par(mfrow=c(2,3))
for (i in 1:5) {
  hist(myds[,i], main=colnames(myds)[i],col='yellow')
}

par(mfrow=c(1,1))

par(mfrow=c(2,3))
for (i in 1:5) {
  boxplot(myds[,i], main=colnames(myds)[i])  
}

# 그룹별 관측값 분포 확인
par(mfrow=c(1,1))
#       구하려는 값(y축) - 그룹화할 변수(x축)
boxplot(myds$crim~myds$grp, data = myds, main='1인당 범죄율')

boxplot(myds$rm~myds$grp, data = myds, main='방의 개수에 따른 분류')

boxplot(myds$tax~myds$grp, data = myds, main='세금에 따른 분류')

# 다중 산점도를 통한 변수 간 상관관계
pairs(myds[,1:5])

head(grp)
# levels를 숫자로 바꾸기 H->1, M->2, L->3
point <- as.integer(myds$grp)
unique(point)
color <- c('red','green','blue')
pairs(myds[,1:5], main='보스턴 주택가격 영향 요소',
      col=color, pch=point)

# 상관계수 구하기
cc <- cor(myds[,1:5])
cc[1,1:5]
cc[5,1:5]
# r이 1에 가까울수록 상관성이 높음 -> 비례
# r이 -1에 가까울수록 상관성이 높음 -> 반비례
# r이 0에 가까울수록 상관성이 없음

# 1 
head(cars)
class(cars)
dim(cars)
str(cars)
plot(cars$speed, cars$dist)
cor(cars$speed, cars$dist)
# 해설 - 속도가 증가할수록 제동거리가 증가한다.

# 2
plot(pressure$temperature,pressure$pressure)
# 해설 - 온도와 기압은 비례관계이다. 0~250도까지는 동일하지만 250도 이상이면 급격하게 증가한다
cor(pressure$temperature,pressure$pressure)

# 3
head(swiss)
pairs(swiss[,1:4])
cor(swiss[,1:4])

# 4 
plot(iris$Species, iris$Petal.Width, pch=as.integer(iris$Species),
     col=c('red','green','blue'))
# 5
income <- c(121,99,25,35,40,30,150,24,50,60)
period <- c(19,20,16,16,18,12,24,12,16,17)
plot(income,period)
cor(income,period)
# 해설 - 수입이 높을수록 교육기간이 길다.

# 6
humidity <- c(56,67,89,91,53,41,46,71,80,92)
rentalAmount <- c(92510,74801,27168,33929,89807,92153,92045,75328,48756,21875) 
plot(humidity, rentalAmount)
cor(humidity, rentalAmount)
# 해설 - 습도가 높을수록 자전거 대여량이 적다.

# 7 
head(state.x77)
cc <- cor(state.x77)
cc[,2]
# HS Grad

# 8 
year <- c(2015:2026)
totalPopulation <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
plot(year, totalPopulation, main = '2015년부터 2020년도까지의 예상 인구수',
     xlab='연도', ylab='총 인구수', type = 'b',col='red',ylim = c(51000,53000))

# 9
year <- c(20144,20151,20152,20153,20154, 
          20161,20162,20163,20164,
          20171,20172,20173)
male <- c(73.9,73.1,74.4,74.2,73.5,73,
          74.2,74.5,73.8,73.1,74.5,74.2)
female <- c(51.4,50.5,52.4,52.4,51.9,50.9,
            52.6,52.7,52.2,51.5,53.2,53.1)
plot(year,man, main='남녀 경제활동 참가율',
     xlab = '연도', ylab = '성별', type='b', col='red', xlim = c(20140,20180),ylim = c(50,75))
lines(year,femail, type='b', col='blue')

# 10
head(trees)
plot(trees$Girth, trees$Height)
cor(trees$Girth, trees$Height)
pairs(trees)
cor(trees)

# 11
head(Orange)
color <- c('red','green','blue')
pairs(Orange, col=color)

# 12-1
library(mlbench)
data("Glass")
head(Glass)
myds <- Glass

# 12-2
pairs(myds[,1:9])

# 12-3
cor(myds[,1:9])

# 12-4
plot(myds[,1:9], col=myds$Type)

# 14
head(LakeHuron)
class(LakeHuron)
str(LakeHuron)
dim(LakeHuron)
length(LakeHuron)

years <- 1875:1972
hlevel <- as.vector(LakeHuron)
plot(years, hlevel, main = 'LankHuron',
type = 'l', col='blue', ylab = '수위', xlab = '연도')

# 15
library(mlbench)
AirPassengers
head(AirPassengers)
class(AirPassengers)
str(AirPassengers)
dim(AirPassengers)
length(AirPassengers)

# 1949년 정보 모두 추출하기
#       시계열객체명 시작년도 c(시작년도,마지막달)
window(AirPassengers, 1949, c(1949,12))

month <- 1:12 # 1~12월까지 벡터 만들기
year.1949 <- window(AirPassengers, 1949, c(1949,12))
year.1955 <- window(AirPassengers, 1955, c(1955,12))
year.1960 <- window(AirPassengers, 1960, c(1960,12))


plot(month, year.1949, main='년도별 항공승객수', type='b', col='red',ylim=c(100,650))
lines(month, year.1955, type='b', col='green')
lines(month, year.1960, type='b', col='blue')

# 16
USAccDeaths
head(USAccDeaths)
class(USAccDeaths)
str(USAccDeaths)

months <- 1:12
deaths.1973 <- window(USAccDeaths, 1973, c(1973,12))
deaths.1975 <- window(USAccDeaths, 1975, c(1975,12))
deaths.1977 <- window(USAccDeaths, 1977, c(1977,12))

plot(month, deaths.1973,ylim=c(6500,12000), type='b', col='red', main='년도별 사고 사망자수', ylab='사망자수', xlab = '월')
lines(month, deaths.1975, type='b', col='black')
lines(month, deaths.1977, type='b', col='blue')
