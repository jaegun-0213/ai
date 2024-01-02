# f = open('new_file1.txt','a',encoding='UTF-8')
# names = ['이순신','김희수']

# for name in names :
#   f.write( name + '\n')

# print('파일쓰기완료')
# f.close()

f = open('new_file1.txt','r',encoding='UTF-8')

# lines = f.readlines() # 여러줄을 한꺼번에 읽어온다
# line = f.readline()
# print(line)

while True :
  line = f.readline() # 한줄만 읽는다
  if not line : break
  print(line)
f.close()