#나이를 입력 받아서 65세이상이면 입장료 무료
from datetime import datetime

ticket = 2000
birth =int (input("태어난년도는?"))
year = datetime.today().year
age = year - birth + 1

if birth > year : 
  print("입력이 잘 못되었어요")
  print("올해는 2023년이네요")

else :
  print(age)
  ticket = 0
  print(f"당신의 나이는 {age}세입니다")
  if 40<= age <= 60 :
    print("입장료는 1000원입니다")
  elif 30<= age <= 39 :
    print("입장료는 1500원입니다")
  elif 20<= age <= 29 :
    print("입장료는 2000원입니다")
  elif 11<= age <= 19 :
    print("입장료는 2500원입니다")
  elif 10>= age :
    print("입장료는 0원입니다")

2
