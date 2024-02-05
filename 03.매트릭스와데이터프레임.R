
# 매트릭스와 데이터프레임

# 매트릭스
z <- matrix(1:30,nrow=5, ncol=6, byrow=T)
z
z <- matrix(101:200, nrow=10, ncol=10)
z

x <- 1:5 # 1차원 벡터
y <- 8:12 # 1차원 벡터
x
y
# 2차원 매트릭스
# 칸(col)으로 합치기
sum.xy <- cbind(x, y)
sum.xy

# 줄(row)로 합치기
sum1.xy <- rbind(x, y)
sum1.xy

# 1~5
# 101~105
# 201~205

x <- 1:5
y <- 101:105
z <- 201:205
bind.xyz <- rbind(x, y, z)
bind.xyz

# 1-1
# 한 행씩 만들어서 합치기
v1 <- c(12:9)
v2 <- c(8:5)
v3 <- c(4:1)
z <- rbind(v1, v2, v3)
z

# 매트릭스로 한번에 만들기
z <- matrix(12:1, nrow=3, ncol=4, byrow = T)
z
row.names(z) <- c('v1','v2','v3')
z

# 5를 검색하기
z[2,4]
# 3을 검색하기
z[3,2]

# 1행 꺼내기
z[1,]
# 2열 꺼내기
z[,2]
# 1행,3행 꺼내기
z[c(1,3),]
# 2열,4열 꺼내기
z[,c(2,4)]
# 2~4열 꺼내기
z[,2:4]

# 행이름 주기
# 열이름 주기
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4, ncol=3)
score
rownames(score) <- c('Jon','Tom','Mark','Jane')
colnames(score) <- c('Eng','Math','Science')
score

score[2,2]
score['Tom','Math']
score[4,3]
score['Jane','Eng'] # score[4,1]
# Tom의 점수는
score['Tom',]
# 수학 점수는
score[,'Math']
# 수학 점수의 평균
mean(score[,'Math'])
# 학생의 이름
rownames(score)
# 과목명
colnames(score)
# 2번째 학생명은
rownames(score)[2]
# 3번째 과목명은
colnames(score)[3]

# 1-1
z <- matrix(12:1, nrow = 3, ncol = 4, byrow = T)
z
rownames(z) <- c('v1','v2','v3')
z

# 1-2
colnames(z) <- c('a1','a2','a3','a4')
z

# 1-3
v4 <- seq(1,7,2)
z <- rbind(z,v4)
z

# 1-4
z[4,]

# 1-5
z[2:4,c('a1','a3')]

# 1-6
rownames(z)[3]

# 1-7
colnames(z)[3]

# 데이터 프레임
city <- c('서울','도쿄','워싱턴')
rank <- c(1,3,2)
etc <- c(TRUE, TRUE, FALSE)
city.info <- data.frame(city,rank,etc)
city.info
city.info[2, 'city']
city.info[1, 'rank']
rownames(city.info)
colnames(city.info)

# 행과 열을 바꾸기
t(city.info) 

iris
head(iris, n=10)
tail(iris)

head(iris, c(1:2))
head(iris[,'Petal.width'])

dim(iris) # 행의 갯수, 열의 갯수
str(iris) # 구조
iris[,5]
unique(iris[,5]) # 중복 제거
table(iris[,"Species"]) # 품종 별로 갯수 세기

colSums(iris[,-5]) # 5번째 열이 수치가 아니여서
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])
rowMeans(iris[,'Species']) # 오류 발생

# 2-1
st <- data.frame(state.x77)

# 2-2
st

# 2-3
colnames(st)

# 2-4
rownames(st)

# 2-5
dim(st)

# 2-6
head(st)

# 2-7 
rowSums(st)
rowMeans(st)

# 2-8
colSums(st)
colMeans(st)

# 2-9
st['Florida',]

# 2-10
st[,'Income']

# 2-11
st['Texas','Area']

# 2-12
st['Ohio', c('Population','Income')]

# 2-13
subset(st, Population >= 5000)

# 2-14
subset(st, Income >=4500)[,c('Population','Income','Area')]

# 2-15
nrow(subset(st, Income >=4500))

# 2-16
subset(st, Area >= 100000 & Frost >= 120)

# 2-17
subset(st, Population < 2000 & Murder <12)

# 2-18
mean(subset(st, Illiteracy >= 2.0)[,'Income'])

# 2-19
mean(subset(st, Illiteracy < 2.0)[,'Income'])-mean(subset(st, Illiteracy >= 2.0)[,'Income'])

# 2-20
max(st[,'Life.Exp'])
rownames(subset(st, Life.Exp == max(st[,'Life.Exp'])))

# 2-21
Pen.Income <- st['Pennsylvania','Income']
subset(st, Income >= Pen.Income)
rownames(subset(st, Income >= Pen.Income))

# 2.5 연산자
a <- matrix(1:20,4,5)
a
b <- matrix(21:40, nrow = 4, ncol = 5)
b

2*a
b-5
a+b

class(iris)
class(state.x77)
class(islands)
class(lh)

is.matrix(iris)
is.data.frame(iris)

# 매트릭스(자료형이 동일한 2차배열) <-- --> 데이터프레임셋(자료형이 다른 2차배열)
st <- data.frame(state.x77) # 매트릭스(자료형이 동일한 2차배열) --> 데이터프레임셋(자료형이 다른 2차배열)
class(st)
class(iris)
as.im <- as.matrix(iris[,-5]) # 데이터프레임셋(자료형이 다른 2차배열) <-- 매트릭스(자료형이 동일한 2차배열) 
class(as.im)

# 열추출하기
class(iris)
class(state.x77)
iris[,'Species'] #열이름으로 검색

head(state.x77)
state.x77[,'Area'] #열이름으로 검색

iris[,5] #인덱스로 검색
state.x77[,8] #인덱스로 검색

iris['Species'] #열이름으로 검색 -> 데이터프레임만 가능
state.x77['Area'] # 메트릭스는 불가능

iris[5] #인덱스로 검색 -> 데이터프레임만 가능
state.x77[8] # 불가능

iris$Species #데이터 프레임만 가능
state.x77$Area #불가능

# 3-1
name <- c('Tom','Jane','Nick')
age <- c(20,23,26)
gender <- c('M','F','M')
height <- c(180,160,175)
student <- c(TRUE,TRUE,FALSE)
human <- data.frame(name,age,gender,height,student)
human

# 3-2
human.new <- list(name='Mary',age=24,gender='F',height=155,student=TRUE)
human <- rbind(human,human.new)
human

# 3-3
str(human)

# 3-4
mean(human[,'age'])
mean(human[,'height'])

# 3-5
colnames(human[,-4])

# 3-6
table(human$gender)

# 파일 불러오기
setwd('D:/ai/study/r_study') #파일 불러올 경로명
air <- read.csv('airquality.csv')
air
class(air)

air2 <- read.csv('D:/ai/study/r_study/airquality.csv')
head(air)
air2['Ozone']

air3 <- read.csv(file.choose()) #대화상자로 열어서 파일 불러오기
head(air3)

# 4. R에서 제공하는 swiss 데이터셋은 스위스 47개 주의 경제 자료를 포함하고 있다. 이 데이터셋에 대해서 다음 문제를 해결하기 위한 코드를 작성하시오.

# (1) 데이터셋의 요약 정보를 보이시오. 
class( swiss )
head(swiss)

# (2) 남성의 농업인 비율(Agriculture)이 가장 높은 주를 보이시오. 
# 1단계 가장 높은 것
max( swiss$Agriculture ) # 89.7
# 2단계 1단계의 행을 구하기
subset( swiss,   Agriculture == max( swiss$Agriculture ) ) 
# 3단계 2단계에서 row의 이름만 구하기
rownames(  subset( swiss,   Agriculture == max( swiss$Agriculture ) )    )

# (3) 남성의 농업인 비율(Agriculture)을 내림차순으로 정렬하여 주의 이름과 함께 보이시오. 
tmp <- swiss[  order( swiss$Agriculture, decreasing = T ) ,     ] 
tmp[ 'Agriculture' ]

# (4) 카톨릭 신자의 비율(Catholic)이 80% 이상인 주들의 남성의 농업인 비율(Agriculture) 을 보이시오. 
subset( swiss, Catholic >= 80 )[ 'Agriculture' ]

# (5) 징집대상자 중 입대시험에서 높은 평가를 받은 사람들의 비율(Examination)이 20% 미만이고 남성의 농업인 비율(Agriculture)이 50% 미만인 주의 이름과 Examination, Agriculture 컬럼의 값을 보이시오. 
subset(  swiss,  Examination < 20 & Agriculture<50 )[ c( 'Examination', 'Agriculture' )]

# 5 R을 이용하여 각 문제를 수행하기 위한 코드를 작성하시오.
# 
# (1) R에서 제공하는 state.x77 데이터셋에서 수입(Income)이 5,000 이상인 주의 데이터에서 수입(Income), 인구(Population), 면적(Area) 열의 값들만 추출하여 rich_state.csv 에 저장하시오. 
subset(  state.x77,  state.x77$Icome >= 5000) # 데이터프레임의 함수
# 1단계 데이터형을 확인
class( state.x77 ) # matrix 구조 
# 2단계 형변환 matrix --> data.frame
st<- data.frame( state.x77 )
class( st )
# 3단계 조건으로 검출 
rich_state <- subset( st, st$Income>=5000 )[  c('Income', 'Population', 'Area' )]
# 4단계 엑셀파일로 저장하기
write.csv( rich_state,  'd:/ai/study/r_study/rich_state.csv'  )

# (2) (1)에서 만든 rich_state.csv 파일을 읽어서 ds 변수에 저장한 후 ds의 내용을 출력하시오. 
ds <- read.csv( 'd:/ai/study/r_study/rich_state.csv' )
ds

# 6
#(1) 위와 같은 내용의 매트릭스 score를 생성하시오. 
m <- c(10,40,60,20)
f <- c(21,60,70,30)
score <- cbind( m,f)
score
# (2) score의 열 이름을 각각 male, female로 바꾸시오. 
colnames(score) <- c('male','female')
# (3) 2행에 있는 모든 값을 출력하시오. 
score[2, ] 
# (4) female의 모든 값을 출력하시오. 
score[ , 'female']

# (5) 3행 2열의 값을 출력하시오. 
score[3,2]

# 7. R에서 제공하는 mtcars 데이터셋은 자동차 모델에 대한 제원 정보를 담고 있다. 이 데이터셋에 대해서 다음 문제를 해결하기 위한 코드를 작성하시오.
# 
# (1) 이 데이터셋의 자료구조를 보이시오. 
class(mtcars)
# (2) 이 데이터셋의 행의 개수와 열의 개수를 보이시오. 
dim(mtcars) 
# (3) 이 데이터셋 열들의 자료형을 보이시오. 
str(mtcars) 
# (4) R 스튜디오의 도움말 기능을 이용하여 각 열이 어떤 데이터를 저장하고 있는지 설명하시오(예: mpg(mile per gallon), 자동차의 연비). 
옆에 help창의 돋보기 아이콘에다가 mtcars

# (5) 연비(mpg)가 가장 좋은 자동차 모델을 보이시오. 
# 1단계 제일 높은 값 33.9 
max( mtcars$mpg)
# 2단계 조건으로 검색해서 한 행만 추출
subset( mtcars, mtcars$mpg == max( mtcars$mpg)  )
# 3단계 자동차 모델만 추출하기 (열이름)
rownames(   subset( mtcars, mtcars$mpg == max( mtcars$mpg)  )  )

# (6) gear가 4인 자동차 모델 중 연비가 가장 낮은 모델을 보이시오. 
# 1단계 gear가 4인 자동차 모델
g.4 <- subset( mtcars, mtcars$gear == 4 )
# 2단계 1단계에서 연비가 가장 낮은 연비는 17.8
mpg.min<- min(  mtcars[mtcars$gear == 4, 'mpg']  )
# 3단계 2단계의 모델명 rownames()
rownames( subset( mtcars, mtcars$mpg == mpg.min) )

# (7) Honda Civic의 연비(mpg)와 gear 수를 보이시오. 
head(mtcars)
mtcars['Honda Civic', c('mpg', 'gear') ]

# (8) Pontiac Firebird 보다 연비가 좋은 자동차 모델을 모두 보이시오. 
# Pontiac Firebird 보다 연비는?
p.mpg <-  mtcars[ 'Pontiac Firebird', 'mpg'] # 19.2
# 
rownames( subset( mtcars, mpg > p.mpg ) ) 

# (9) 자동차 모델들의 평균 연비를 보이시오. 
mean( mtcars$mpg )

# (10) gear의 수 종류를 보이시오. 
unique( mtcars$gear )