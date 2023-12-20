#병합,합계,순서꺼꾸로,정렬,복사
person1 = ["kim",24, "kim@naver.com"]
person2 = ["lee",35, "lee@hanmail.com"]
person3 = ["kim",24, "kim@naver.com"]

#병합 --> +
person = person1+person2+person3
print(person)

#합계 --> 함수 sum
scores = list(range(80,101,10))
print(scores)
sm = sum(scores)
print(sm)

# data = [1,2,8.9, "a", "b"]
# sm = sum(data)
# print(sm)

# 평균
ju = list(range(90,101,1))
sm = sum(ju)
avg=sum(ju) /len(ju)
print(avg)

#꺼꾸로 --> reverse
data = ["사과","귤","딸기","배"]
data.reverse()
print(data)
data.reverse()
print(data)

# 복사하기 --> copy
frults = ["apple", "banana", "orange"]
print(frults)

x=frults.copy() # 리스트의 내용이 동일하게 다시 메모리에 만들어지는 것
print(x)
print(type(x))

xx = frults #리스트 주소의 xx변수를 넣는다. 같은 메모리 가리킴
print(xx)
print(type(xx))

frults.insert(1,"pineapple")
print(frults)
print(x)
print(xx)


# 정렬하기 --> sort()
data = [12,8,15,32,-3,-20,15,34,6] #오름차순 정렬
data1 = ['a', 'A', 'C','!', '한글','가나'] # 유니코드 번호 순서대로 정렬

data.sort()
print(data)

data1.sort()
print(data1)

data.sort(reverse=True)
print(data)

data1.sort(reverse=True)
print(data1)