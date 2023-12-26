#지역변수
#전역변수
#변수의 생명주기 life cycle
def func () :
  x = 10 # 지역 변수
  print(x)

func()

gx = 200 # 파일안에서 태어났으므로 파일안에서는 다 쓸 수 있다. 전역 변수
def func2 () :
  print(gx)

func2()
print(gx)

gx = gx + 300
print(gx)

def func3 () :
  global y # 함수안에 선언할 변수를 전역변수로 만들고싶다.
  # 그러면 스택 공간에 변수를 할당한다
  # 계속 살아 있는 변수임, 쓸때 신중하게 쓰기. 메모리 비효율적

  y = 300 
  y = y - 10
  print(y)

func3()
print(y)
y = y + 20
print(y)

def func4 () :
  print(y)

func4()

def func5 () :
  global x
  x = 200
  print(x,"~")

x = 100
print(x,"~~")
func5()
print(x,"~~~")

def cir_area () :
  global r
  result = r * r * 3.14
  return result

def cir_length () :
  global r
  result = 2 * 3.14 * r
  return result

r = 10
area = cir_area()
length = cir_length()
print ("원의 면적 : %.1f, 원주의 길이 : %.1f"%(area,length))