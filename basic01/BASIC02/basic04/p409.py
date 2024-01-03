# 속성 = 자바에서 필드, 변수

class Student :
  pet = [] # 클래스 속성 , 값을 계속 유지함
  def push_prt(self, x) :
    self.pet.append(x)


john = Student() # 객체화
john.push_prt("고양이")
print(john.pet)
sally = Student()
sally.push_prt("강아지")
print(sally.pet)
'''

class Student :
  def __init__(self) :
     self.pet = [] # 인스턴스 속성, 해당 객체에서만 값이 유효하다(객체화 할때마다 지워짐)
  def push_prt(self, x) :
    self.pet.append(x)


john = Student() # 객체화
john.push_prt("고양이")
print(john.pet)
sally = Student() # 객체화
sally.push_prt("강아지")
print(sally.pet)
'''