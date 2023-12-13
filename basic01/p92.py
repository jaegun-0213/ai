#연습문제

# #1
# a=10
# b=20
# print("두 수의 합 :", a + b)

# #2
# print(f"{a} + {b} = 30")

# #3
# print(f"{str(a)} + {str(b)} =30")

# #4
# app = input ("첫번째 과일을 입력하세요.")
# st = input ("두번째 과일을 입력하세요")
# print (f"{app}와(과) {st}은(는) 내가 좋아하는 과일이다")

# #7
# aa = input ("첫번째 숫자를 입력하세요")
# bb = input ("두번째 숫자를 입력하세요")
# print(int(aa) / int(bb))

#95심화문제
#s2-1 환산 프로그램

# kg = input ("변환할 킬로그램(kg)은?")
# print("-"*30)
# print("킬로그램     파운드      온스")
# print("-"*30)
# pound = int(kg) * 2.204623
# ounce = int(kg) * 35.273962
# #print (f"{kg}     {pound}       {ounce}")
# print("%d   %.2f    %.2f"%(int(kg), pound, ounce))
# print("-"*30)

#s2-2
phone=input("휴대번호는?")
#방법1 "-"를 찾아서 "" 바꾸기
#deleteHy=phone.replace("-","")
print(f"입력된 휴대번호 : {phone}")
deleteHy = phone.split ("-")
print(f"하이폰 삭제된 휴대번호 {deleteHy}")
# print ( deleteHy[0], deleteHy[1], deleteHy[3] sep="")
#방법2 split("-")자르기

