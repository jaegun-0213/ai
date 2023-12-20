# 리스트 특징
# 여러 자료들의 목록형태로 관리하는 자료구조
# 특징 : 순서가 있다, 수정이 가능하다, 요소의 종류가 달라도 된다.
# 동일한 요소가 여러개 나올수 있다(중복저장가능)
list1 = [1,1.1,"문자", [1,9],7,8]
print(list1[1:5:3])

list1 = [3,15,-12.5,"사과","딸기"]
print(list1)
print(type(list1))

#리스트를 만드는 방법
# 방법 1 : 변수=[요소들]
#방법 2 : 리스트()라는 함수를 사용하기
list2 = list ( range(1,21,2) )
print(list2)

list3 = list("abcdef")
print (list3)
print(type(list3))

coleor = ["빨강", "주황", "노랑", "초록", "파랑", "남색", "보라"]
print(coleor[0])
print(coleor[5])
print(coleor[2:6])
print(coleor[-3])
print(coleor[-4: -1])
print(coleor[0:])
print(coleor[3:])
print(coleor[0:3])
print(coleor[-8 : 3])
print(coleor[1],coleor[4],coleor[6])

list6 = (coleor[1],coleor[4],coleor[6])
print(list6)
print(type(list6))

# 반복문과 리스트

for i in coleor :
  #print(i[0], end=" ")
  print("나는 %s을 좋아합니다"%i)

print(len(coleor)) # len(리스트) 리스트 요소의 갯수