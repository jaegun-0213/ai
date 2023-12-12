1.#문자열 인덱싱
letters = "java programming"
print(letters[5], letters[10], letters[15])
1.#문자열 슬라이싱
자동차번호판 = "43다 6521"
print(자동차번호판[4:10])
1.#문자열 인덱싱
string = "홀짝홀짝홀짝홀짝"
print (string[1], string[3],string[5],string[7], sep="")
1.#문자열 슬라이싱
string1 = "PTYHON"
print(string1[5], string1[4],string1[3],string1[2],string1[1],string1[0], sep="")
1.#문자열 치환
phone_number="010-888-9999"
phone_number= phone_number.replace("-", " ")
print(phone_number)

phone_number= phone_number.replace(" ", "")
print(phone_number)
1.#문자열 다루기
url = "http://gmail.com"
url=url.split(".")
print(url[1])

url = "http://www.naver.com"
url = url.split(".")
print(url[1])
1.#문자열 다루기
1.#문자열 부분적으로 수정하기 - 에러 모습 확인하기
lang = "java python"
#lang[0] = "K" #문자열은 부분적으로 수정이 안됨
lang = lang.replace("j", "k")
print(lang)
1.#문자열 부분적으로 수정하기 - 8번을 오류없이 하려면
1.#아래코드를 실행하면 결과가 어떻게 될까요?
string = "abcdefABCDEFabc"

string = string.replace("c", "!")

print(string)
1.#아래코드를 실행하면 결과가 어떻게 될까요?
string = "abcdefABCDEFabc"

print( string.replace("c", "!") )

print(string)
1.#왜 print(string) 를 출력하면 c가 !로 바뀌어 나오지않을까요? 
1.#12번
a="123"
b="456"
print(a+b)
1.#13번
print("hi"*5)
1.#14
print("+"*150)
1.#15
s1 = "python"

s2 = "c++"

s3 = "java"

print((s1+s2+s3)*6)
1.#16
name1 = "홍길동"

age1 = 25

eyesight1 = 1.2

name2 = "이순신"

age2= 13

eyesight2 = 0.8
print( "이름 : %s 나이 %d 시력 : %.1f"%(name1,age1,eyesight1))
print( "이름 : %s 나이 %d 시력 : %.1f"%(name2,age2,eyesight2))
1.#17
print("이름 : {} 나이 : {} 시력 {}".format(name1, age1, eyesight1))

print("이름 : {} 나이 : {} 시력 {}".format(name2,age2,eyesight2))

1.#18 f-sting(일반적으로 많이 씀)
print(f"이름 : {name1} 나이 : {age1} 시력 : {eyesight1}")
print(f"이름 : {name2} 나이 : {age2} 시력 : {eyesight2}")
1.#19
총금액 = "5,896,124,650"

총금액 = 총금액.replace (",", "")
print(type(총금액))
총금액 = int(총금액)
print(총금액 + 100)

1.#20
날짜 = '2024/01(E) 1사분기'
print(날짜[0:7])

1.#21
data = "      공백제거하기   "
data = data.strip()
print(f"{data}")
1.#22
lowerWord = "python is very good"
print (lowerWord.upper())
1.#23
upperWord = 'java language'
print(upperWord.lower())
1.#24
capitalizeWord = 'python quiz'
print(capitalizeWord.capitalize())
1.#25
fileName="abc.csv"
print(fileName.endswith("csv"))

if fileName.endswith("csv") :
    print("엑셀파일입니다")

fileName.endswith("csv" or "xlsx")