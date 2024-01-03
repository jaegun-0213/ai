# 생성자

class Menbers :
  def __init__(self) : # 기본생성자
    self.name = None
    self.age = None                                                                              
    self.gender = None
  def __init__(self, name=None, age=None,gender=None) : #생성자
    self.name = name
    self.age = age
    self.gender = gender
  def show_info (self) :
    print("이름 : ", self.name)
    print("나이는 :", self.age)
    print("성별 :", self.gender)

#객체생성
m1 = Menbers("홍길동", 25)
m1.show_info()

m2 = Menbers("홍길동", 25, True)
m2.show_info()