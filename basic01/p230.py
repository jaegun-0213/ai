# 튜플 - 수정이 안된다. 용도 - 수정변동 불가한 것

t = (1,2)
t1 = 1,2
print(t[0])
print(t1[1])
print(type(t))
print(type(t1))

t2 = 1,
print(type(t2))
# () 생략할 수 있다 , 1개 요소 (1,)
t3 = () #빈 튜플
print(type(t3))

animals = ("토끼", "거북이" , "사자", "여우")
print(animals[-1:]) #리스트의 슬라이스와 동일하다

#토끼를 돼지로 바꾸기
#animals[0] = "돼지"
#바꾸기 1단계 리스트로 만들기 / 2단계 튜플로 만들기
animals_list= list(animals)
print(type(animals_list))
print(animals_list)
animals_list[0] = "돼지"
print(animals_list)
animals = tuple(animals_list)
print(animals)

#튜플 만들기
#변수 = () / 변수 = tuple(( ))
n = tuple(range(10,21))
print(n)
n2 = tuple([1,2,3])
print(n2)

print(n[::-1])
print(len(n))

#튜플 병합하기
tup1 = (10,20,30,40)
tup2 = (40,50,60)
tup3 = tup1 + tup2
print(tup1)
print(tup2)
print(tup3)
print(tup1 *2) # 2번반복
#print(tup1*tup2)

#tup1의 합계는?
print( tup1[0] + tup1[1]+ tup1[2]+ tup1[3])
sm = sum(tup1)
print(sm)

#tup1 30삭제하기
#tup1.remove(30) 오류
#tup1 50추가하기
#tup1.append(50) 오류
#tup1.reversed()

#실습
t1 = ("valentine",2,14,'gift')
print(t1[1:2])
t2 = ("love",)
print(t2[0])
print(t1+t2)
print(t2*2)
print(t1)

a_1 = ["홍길동","이수지","박상민"]
a_1[1] = "하누리"
print(a_1)

a_1 = ("홍길동","이수지","박상민")
#a_1[1] = "하누리" 에러발생
print(a_1)