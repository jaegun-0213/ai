#함수
# 용도는? 역할을 담당하는것,  기능을 만들어 두고 필요할 때마다 사용함
# 사용법은? 만들기 -> 호출해서 사용
def hello() : #사용자 정의 함수
  print("Hi") #내장함수
def gooMoring () :
  print("gooMoring")

gooMoring()
hello() # 호출

#함수의 종류
# 내장함수 - 파이썬에서 미리 만들어둔것
# 사용자 함수 - 프로그래머가 필요에 따라 만들어 주는 함수
def Hi1 ( name ) : # 매개 변수
  print(f"안녕!{name}야")

Hi1("길동") # 매개변수에 들어갈 값

# 나는 현희야 키가 160이야, 나는 길동야 키가 180이야
#나는 민수야 키가 170이야

def a (name,k) :
  print (f"나는 {name}야 키가 {k}이야")

a("현희", 160)
a("길동", 180)
a("민수", 170)

# 263 여러개 매개변수인 경우(가변인 경우)
def average(*args) :
  num_args = len(args) # 실인수의 갯수가 나온다
  sum = 0
  for i in range(num_args) :
    sum = sum + args[i]
  avg = sum / num_args
  print(f"평균은 {avg}")

average (85,96,87)
average (85,96,87,97,72)
average (5,78)

def printAll (*All) :
  # 갯수 구하기
  s = ' ' # 빈공간
  for i in All :
    s = s + i
  print(s)

printAll("a", "b")
printAll("a", "b", "c")
printAll("a", "b", "c", "d")


def func(food) : # 리스트에 힙 메모리의 주소가 전달
  for x in food :
    print(x) 

fruits = ["사과", "오렌지", "바나나", "사과"]
func(fruits)

# 듀플 - 리스트와 동일 수정이 안됨, 변경하면 안되는 것 이곳에 저장하기

def tD( tDP) :
  for i in tDP :
    print(i)

tupleDate = ("삼성", "LG","세스코")
tD(tupleDate)

# 딕셔너리
def dicF(dictDataP) :
  dictData[4] ='d'
  print(dictData)
dictData = {1 : "a", 2:"b", 3 : "c"}
dicF(dictData)

def returnSum(n1,n2,n3) :
  s = n1 + n2 + n3
  return s
ss = returnSum(10,20,30)
print(ss)

def returnArea(r) :
  return r * r * 3.14

circleArea = returnArea(10)
print(circleArea)