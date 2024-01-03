# 예외처리 - 오류를 대처하고 처리하는 방법
# 형식은 try : 내용 
              # except : 오류 처리내용 
              # finally : 오류나 정상이나 모두 처리되는 내용

try :
  x = 10
  print(x)
  def divde(a,b) :
    c = a / b
    print (c)
  divde(10, 0)
except NameError :
  print("변수의 값이 없습니다.")
except ZeroDivisionError :
  print("0으로 나눌수 없습니다.")
finally :
  print ("모두 처리됨")
  