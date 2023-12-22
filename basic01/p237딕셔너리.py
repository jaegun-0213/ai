# 딕셔너리 {key:value}
score = {"kor":90, "eng":89, "math":95}
print(score["math"])

user = {"id":"kim55", "name":"강성준", "level":"7", "point":10000}


#전체 출력하기
for us in user:
  print(f"{us} - {user[us]}~~")


#추가하기
score["music"] = 100
print(score)
user['vip'] = '우수회원'
print(user)

#수정하기
score["music"] = 80
print(score)
user['vip'] = '최우수회원'
print(user)

#삭제하기
x = score.pop("music")
print(x)
print(score)

user.pop("vip")
print(user)

#반복문을 이용해서 딕셔너리 처리
area_code = {"02":"서울", "051":"부산", "053":"대구", "062":"광주"}

for key in area_code : #키값이 자동으로 한개씩 들어간다
  print(f"{key} - {area_code[key]}")

sk =""
for key in area_code:
  sk = sk + key + " "
print(sk)


