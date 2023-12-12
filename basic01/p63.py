# 문자열 연산자
x = "토끼"*10
print(x)

#문자열 포맷팅
animal = "고양이"
age = 25
score = 12.55
x = "나는 %s를 좋아하는입니다"%(animal)
print(x)

y="a"
x="%c"%y # %c는 한글자 %s 한글자이상
print(x)


y=15
x="%o"%y # %o는 8진수로 표시
print(x)

y=15
x="%x"%y # %x는 16진수로 표시

# %s %c %f %d %o %x
"""

name = input("이름을 입력하세요")
print( "%s입니다"%name)

score = input ("점수는")
print(type(score))
print ("%d 점입니다"%(int)(score))

score = (int)(input ("점수는"))
print(type(score))
print ("%d점입니다"%score)



# 실수 12.5789를 입렵 받아서 원넓이를 구하세요
score = (float) (input ("반지름을 입력하세요"))
area = score*score*3.14
print("%3f원넓이"%area)
"""

#74
name = "홍지영"
a=10
b=20
print(name, a, b, a-b, 100, sep="")

#76 널이란? 값이 없는 것 ""

print("문자열에는 문자 앞 뒤에 쌍따옴표 (\")를 \n붙인다")

