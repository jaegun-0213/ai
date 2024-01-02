# 파일 삭제하기
import os

if os.path.exists("./basic02/new_file.txt") :
  os.remove("./basic02/new_file.txt")
else :
  print("삭제하려는 파일이 없어요")
#폴더 삭제하기
#폴더만들기
if os.path.exists("./basic02/mm") :
  print("이미 폴더가 있어요")
else :
  os.mkdir('./basic02/mm')

if os.path.exists("./basic02/mm") :
    os.rename("./basic02/mm","./basic02/new_mm")
else :
  os.mkdir('./basic02/mm')


if os.path.exists("./basic02/new_mm") :
    os.rmdir("./basic02/new_mm")
