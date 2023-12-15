print(bool(8==5))
print(bool(3<5))
print(bool(3==3) and (4 != 3))
print(bool(3>=4))
# 6
if 4<3:
  print("Hello")

# 7
if 4<3:
  print("Hello Wirld")
else:
  print("Hi,there")

#8
if False :
  print("1")
  print("2")
else :
  print("3")
print ("4")
# 9
if True :
  if False :
    print("1")
    print("2")
  else:
    print("3")
else:
  print("4")
print("5")

#10
a = input ("입력하세요")
print(a*2)

#11
a1 = int(input("숫자를 입력하세요 :"))
print(a1+10)

# 12
a2 = int(input("숫자를 입력하세요"))
if a2 % 2 == 0 :
  print("짝수")
else :
  print("홀수")

#13
a3 = int(input("값을 입력하세요"))
if a3 <= 255 :
  print(a3+20)
else :
  print(255) 

#14
a4 = int(input("값 입력"))
a4 = a4-20
if 0 <= a4 <= 255 :
  print(a4)
elif a4 < 0 :
  print(0)
else :
  print(255)

#15
time = input("시간입력")
#a5 = 
a6 = 10
#if time 