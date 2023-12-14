char =input("영문 대문자 또는 소문자 하나를 입력하세요 :")
char2 = char.upper()

if char2 =="A" or char2 == "W" or char2 == "E" or char2 == "R" or char2 == "T" :
  print("%s -> 모음" % char)
else :
  print("%s -> 자음" % char)