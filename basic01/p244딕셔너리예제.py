#딕셔너리 만들기

inventor = {"메로나":[300,20],
            "비비빅":[400,3],
            "죠스바":[250,100] }

#메로나   300   20  6000
#비비빅   400   3   6000
#죠스바   250   100   6000

for i in inventor :
  t = inventor[i][0] * inventor[i][1]
  print(f"{i}  {inventor[i][0]}원   {inventor[i][1]}개   {t}원")





#메로나 가격얼마?
print(inventor["메로나"][0],"원", sep="")
#죠스바의 재고는?
print(inventor["죠스바"][1],"개",sep="")
#월드콘 추가 1500,50
inventor["월드콘"] = [1500,50]
print(inventor)
# 죠스바 가격 올리기 350원
inventor["죠스바"] = [350,100]
print(inventor)

#아이스크림 품목의 수?
print(len(inventor))

#아이스크림의 종류는?
for k in inventor:
  print(k, end=" ")