#c6-2
scores = {"김채린":85, "박수정":98, "함소희":94, "안예린":90, "연수진":93}

sum = 0

for key in scores :
  sum = sum + scores[key]

  print("%s:%d"%(key,scores[key]))

avg = sum / len(scores)
print("합계 : %d, 평균:%.2f" %(sum,avg))

#c6-3
admin_info = {"id":"admin", "password":"12345"}
input_id = input("아이디를 입력하세요 :")
input_pass =input("비밀번호를 입력하세요 :")

if input_id == admin_info["id"] and input_pass == admin_info["password"]  :
  print("정보에 접근 권한이 있습니다!")
else :
  print("정보에 접근 권환이 없습니다!")

#c6-4
words = {"꽃":"flower", "나비":"butterfly", "학교":"school", "자동차":"car", "비행기":"airplane"}
print("영어 단어 맞추기 퀴즈")

