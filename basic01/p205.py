# #특정 문자열 찾기, 문자열치환, 문자열 쪼개기
# string1 = "Python is fun!"
# print(string1)
# a = string1.find("k")
# print(a)

# studentName = "홍길동 이순신 이경미 최수진"
# if studentName.find ("최수진") == -1:
#   print("우리반 아니에요")
# else :
#   print("우리반입니다")


# # 치환하기
# a = studentName.replace("최수진", "정수진")
# print(a)

# #없는거를 치환하기
# a = studentName.replace("이수진", "박수진")
# print(a)

# data = "홍길동/이순신/최경주"
# data = data.replace("/", " ")
# print(data)

# data= data.replace(" ", "-")
# print(data)

# #데이터 쪼개기
# hello = "hava a nice day ; Happy new Year; Merry Christmas"
# list1 = hello.split(";")
# print(list1)
# list1 = hello.split(";",2)
# print(list1)

# #문자열 join --> 합쳐주기
# names = ["황예린","홍지수","안지영"]
# print(names)

# x = "/".join(names)
# print(x)

# phonnumber = ["010", "1234", "5678"]
# xx = "-".join(phonnumber)
# print(xx)
# print(type(xx))

# #5-25
# phon_list1 = ["010-3654-2637", "010-3984-5377", "010-3554-0973"]
# print(phon_list1)

# phon_list2 = []
# for number in phon_list1 :
#   x = number.replace("-", "")

#   phon_list2.append(x)
# print(phon_list2)

# # 5-26
# sentences = ["Love me, love my dog", "No news is good news", 'B;ood is thicker than water']

# for sentences in sentences :
#   x = sentences.replace(" ", "_")
#   print(x)

# # #5-5
# # questions = ["s_hool", "compu_er", "deco_ation", "windo_", "hi_tory"]
# # answers = ["c","t","r","w","s"]

# # for i in range (0,len(questions)):
# #   q = "%s : 밑 줄에 들어갈 알파벳은?"%questions[i]
# #   guess = input(q)

# #   if guess == answers[i]:
# #     print("정답!")
# #   else :
# #     print("틀렸어요!")

# #5-6
# scores =[]

# while True :
#   x = int(input("성적을 입력하세요(종료시 -1입력)"))
#   if x == -1 :
#     break
#   else : 
#     scores.append(x)
# sum = 0
# for score in scores :
#     sum = sum + score

# avg = sum/len(scores)
# print("합계 : %d, 평균: %.2f"%(sum,avg))

file_names = ['file1.py', 'file2.txt', 'file3.pptx', 'file4.doc']
# a= "file1.py"
# aS = a.split(".")
# print(aS[0])
for file_name in file_names :
   fs= file_name.split(".")
   print(f"{file_name} => 파일명 : {fs[0]}, 확장자 : {fs[1]}")

emails = [["kim", "naver.com"], ["hwang", "hanmail.net"],
          ["lee", "korea.com"],["choi", "gmail.com"]]
email_new = []
for email in emails :
    
    email_new.append( ( email[0] + "@" + email[1]     )            )
print( email_new )

data = [[10,20,30],[40,50],[0,70,80,90]]
for row in data :
  for x in row :
    print(x, end="") #제일 처음 x는 10이다
  print()

