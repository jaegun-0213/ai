
x = 10
y = -5
if not x >= 0 :
    print("두개 다 양수") # or은 ~이거나
print( f"{x} {y}")

xx = 10
print(xx % 2 == 0 or xx % 3 == 0)

a = 5
b = 7 
c = a+b
print (c == 12)

hobby1 = "영화감상"
hobby2 = "축구"
my_hobby = "음악듣기"
print(my_hobby == hobby1 or hobby2 == my_hobby)
#음악듣기 == 영화감상 or 축구 == 음악듣기

pilgi = 90
silgi = 70
if pilgi >= 80 and silgi>= 80  :
  print("합격")
else :
   print("불합격")

# 12월 입력받고 123월이면 1사분기 456월이면 2사분기
month = int (input("월은"))
if month <= 0 or month > 13 :
  print("잘못된 달입니다")
elif 1 <= month <= 3 :
   print("1사분기")
elif 4 <= month <= 6 :
   print("2사분기")
elif 7 <= month <= 9 :
   print("3사분기")
elif 10 <= month <= 12 :
   print("4사분기")
