# 클래스 : 설계도 ( 필드 - 변수, 함수 - 동작)
# 객체 obj : 클래스를 메모리에 올려서 실제 자료 넣어주는 것
# 메소드 : 클래스안에 있는 함수 (동작하는 것)
# 필드(파이썬에선 속성)

class Person :
  name = "홍길동"
  list1 = [] # 빈리스트
  def method1(self) : #self(자기자신) Person 클래스를 가르킨다
    print( "메소드입니다." )
  def method2(self,age) : #self(자기자신) Person 클래스를 가르킨다
    print( "나이는", age )

# 클래스 사용하기
p1 = Person() # 객체화
print(p1.name)
p1.list1.append( 'aa' )
print(p1.list1)
p1.method1()
p1.method2(36)