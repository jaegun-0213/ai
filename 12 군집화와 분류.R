# 7. mlbench 패키지에서 제공하는 BreastCancer 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)
data("BreastCancer") # 데이터셋 불러오기
head(BreastCancer ) 
dim( BreastCancer )
class( BreastCancer )
str( BreastCancer )

#  BreastCancer 데이터셋에는 결측값이 포함되어 있으므로 결측값을 제거한다.
ds <- BreastCancer[ complete.cases( BreastCancer  ),  ]
head( ds )

#  BreastCancer 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.
ds.new <-  ds 
head( ds.new )
str( ds.new )
dim( ds.new )
#  k-최근접 이웃에서 k는 5로 한다.
#  10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
library( class )  # knn()
library( cvTools ) # cvFolds() 
folds <- cvFolds(  nrow( ds.new ), K=10 )
head( folds )
acc <- c() # 각 폴드에 대한 정확도를 담아둘 벡터 

head( ds.new )

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds.new[ -idx, 1:10 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds.new[ -idx,  11]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds.new[ idx, 1:10 ]
  # 시험용 답안지 
  ds.test.a <- ds.new[ idx,  11 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
mean(acc)  # 예측 정확도 0.7498082

# 7. mlbench 패키지에서 제공하는 BreastCancer 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)
data("BreastCancer") # 데이터셋 불러오기
head(BreastCancer ) 
dim( BreastCancer )
class( BreastCancer )
str( BreastCancer )

#  BreastCancer 데이터셋에는 결측값이 포함되어 있으므로 결측값을 제거한다.
ds <- BreastCancer[ complete.cases( BreastCancer  ),  ]
head( ds )

#  BreastCancer 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.
ds.new <-  ds 
head( ds.new )
str( ds.new )
dim( ds.new )
#  k-최근접 이웃에서 k는 5로 한다.
#  10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
library( class )  # knn()
library( cvTools ) # cvFolds() 
folds <- cvFolds(  nrow( ds.new ), K=10 )
head( folds )
acc <- c() # 각 폴드에 대한 정확도를 담아둘 벡터 

head( ds.new )

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds.new[ -idx, 1:10 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds.new[ -idx,  11]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds.new[ idx, 1:10 ]
  # 시험용 답안지 
  ds.test.a <- ds.new[ idx,  11 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
mean(acc)  # 예측 정확도 0.7498082


# 8. mlbench 패키지에서 제공하는 PimaIndiansDiabetes 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)
data("PimaIndiansDiabetes") # 데이터셋 불러오기
head( PimaIndiansDiabetes )
dim( PimaIndiansDiabetes ) # 768 9
str( PimaIndiansDiabetes )
class( PimaIndiansDiabetes )

#  PimaIndiansDiabetes 데이터셋에서 마지막에 있는 diabetes 열이 그룹 정보이다.

#  k-최근접 이웃에서 k는 5로 한다.

#  10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
ds <- PimaIndiansDiabetes[ complete.cases( PimaIndiansDiabetes ), ]
folds <- cvFolds(  nrow(ds), K=10 )
acc <- c()
for( i in 1:10) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds[ -idx, 1:8 ]
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds[ -idx,  9]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds[ idx, 1:8 ]
  # 시험용 답안지 
  ds.test.a <- ds[ idx,  9 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
mean( acc )

# 9. mlbench 패키지에서 제공하는 Vehicle 데이터셋에 대해 k-최근접 이웃 알고리즘을 이용하여 모델을 만들고 예측 정확도를 측정하시오.

library(mlbench)
data("Vehicle") # 데이터셋 불러오기
head( Vehicle )
dim( Vehicle ) # 846 19
class( Vehicle )
str( Vehicle )

#  Vehicle 데이터셋에서 마지막에 있는 Class 열이 그룹 정보이다.

#  k-최근접 이웃에서 k는 3으로 한다.

#  10-fold 교차 검증 방법으로 예측 정확도를 측정한다.
ds <- Vehicle[ complete.cases(Vehicle), ]
folds <- cvFolds(  nrow( ds ), K=10 )
acc <- c()

for( i in 1:10 ) {
  # 시험용 자료의 인덱스를 구하기 
  idx <- folds$which == i
  # 학습용 문제
  ds.train.q <- ds[ -idx, 1:18 ]s
  head( ds.train.q )
  # 학습용 답안지
  ds.train.a <- ds[ -idx,  19]
  head( ds.train.a )
  # 시험용 문제
  ds.test.q <- ds[ idx, 1:18 ]
  # 시험용 답안지 
  ds.test.a <- ds[ idx,  19 ]
  pred <- knn( ds.train.q, ds.test.q, ds.train.a, k=5 )
  acc[i] <- mean( pred ==  ds.test.a)
}
acc
mean( acc )