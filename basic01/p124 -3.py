# 간단 계산기 만들기
print("기능선택")
print("1.더하기")
print("2.빼기")
print("3.곱하기")
print("4.나누기")
print()

s = input ("계산기 기능을 선택하세요 (1/2/3/4) :")
num1 = int (input("계산할 숫자는?"))
result = 0
first = "y"
while num1 > 0 :
  number = number + 1
  num2 = int (input(f"숫자 {number}?"))

  num1 = num1 -1
  if first == "y" :
      first = "n"
      result = num2
      
  else :
    if s== "1" :
      result += num2
    elif s == "2" :
      result -= num2
    elif s == "3" :
      result *= num2
    elif s == "4" :
        result /= num2
    else :
      print("입력된 숫자가 잘못되었습니다")

print(result)

