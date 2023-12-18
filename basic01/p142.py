#for문, while문
# for x in range(1,11,2) :
#   print(x)

# for x in range(5,101,5) :
#   print(x)

# for x in range(100 , 4, -5) :
#   print(x)

# # a1 = int (input ("시작 수 :"))
# # a2 = int (input("마지막 수 :"))
# # a3 = int (input ("증가수:"))
# # for x in range(a1 , a2, a3) :
# #   print(x)

# # sum = 0
# # sumsum = 0
# # for x in range (1, 101 , 1) :
# #   sum = sum + x
# #   sumsum = sumsum + sum
# # print(sum)
# # print (sumsum)

# # for x in range (10) :
# #   print(x , end=" ")
# # for x in range (1,11) :
# #   print(x, end=" ")
# # for x in range (1,10,2) :
# #   print(x , end=" ")
# # for x in range (20,0,-2) :
# #   print(x , end=" ")


# # year = 2024
# # month = 1
# # day = 1
# # for day in range (1,32) :
# #   print(year, month, day, sep= "/")
# #   print()

# # sum = 0
# # for x in range (1,101) :
# #   sum += x
# #   if sum >= 3000 :
# #     break
# # print (sum)

# # sum = 0
# # for x in range (100 , 10001, 5) :


for i in range (1, 6) :
  for j in range (1, 6-i) :
    print(" ", end="") # 공백 찍기
  for k in range (1,2*i) :
    print("*", end="")
print()