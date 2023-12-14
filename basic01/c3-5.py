height = int(input("키는?"))
weight = int(input("몸무게는?"))

s= (height - 100)*0.9

print("=" *50)
print("키",height)
print("몸무게는",weight)

if weight > s :
  print("건강을 위해 다이어트가 필요합니다")
else :
  print ("표준 또는 마른 체형입니다")