# 요소변환 수정(삽입,삭제,업데이트)하기

# 수정하기( []="" )
flowers = ["목련", "벚꽃", "장미", "백일홍"]
print(flowers)
flowers[1] = "무궁화" #수정
print(flowers)
flowers[3] = "개나리"
print(flowers)

#추가하기 (.append)
flowers.append("백일홍")
print(flowers)
flowers.append("튤립")
print(flowers)

#메소드 vs 함수 동작시키기
#메소드는 객체안에서 동작을 시키는것
#함수는 동작을 시키는 것

#실무에서는 리스트를 어떻게 쓸까? 빈 리스트 만들고 나중에 추가로 넣기
scores = [] #비어있는 리스트
scores.append(100)
scores.append(90)
scores.append(85)
scores.append(100)
scores.append(89)
print(scores)

#특정 위치에 삽입하기
"""
frulits = []

while True :
  frulit = input("좋아하는 과일은 :")
  if frulit=="끝" :
    break
  frulits.append(frulit)
print(frulits)
frulits.insert(1,"자몽")
print(frulits)
"""

# 특정요소 위치찾기
number = [5,20,13,7,8,22,7,17]
print(number)
idx = number.index(7)
print(idx)

number = [5,20,13,7,8,22,7,17,8,9,8,1]
print(number.index(8,9))

flowers = ["목련", "벚꽃", "장미","벚꽃", "백일홍","벚꽃"]
print(flowers.index("벚꽃"))
print(flowers.index("벚꽃",4))

# 삭제하기 ( removd)
flowers = ["목련", "벚꽃", "장미","벚꽃", "백일홍","벚꽃"]
flowers.remove("목련")
print(flowers)
flowers.remove("벚꽃")
print(flowers)
# flowers.remove("개나리") # 오류발생
# print(flowers)
x = flowers.pop(2)
print(x)
print(flowers)

flowers.clear()
print(flowers)