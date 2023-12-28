'''
x = 'a'
print(ord(x))

x = 10
print(bin(x))
print(hex(x))

x= round (7.25678)
print(x)

x= max(10,9,-20)
print(x)
x = min ([1,5,0,7])
print(x)

x = max((10,9,7,20))
print(x)

x = min({10,98,67,10})
print(x)

x=min ({1:"a", 0:"b", -1: "c "})
print(x) # 키의 제일 작은순

x = ("a","b" ,"c")
print(x) # 유니코드로 제일 작은 코드가 나온다

# 소수여부 판별하기
def is_prime (n) :
  prime = True
  if n > 1 :
    for i in range (2, n) :
      if n % i == 0 :
        prime = False
        break

  return prime


number = int(input("수를 입력하세요"))
if is_prime(number) :
  print("소수이다!")
else:
  print("소수가 아니다!")


# 세제곱 합계 구하기
def square_sum(n) :
  sm = 0
  for i in range (1, n+1) :
    sm = sm + (i*i*i)
  return sm

n = int(input("N의 값을 입력하세요"))
print(square_sum( n ))

#c8-1
def square_sum(n) :
  sm = 0
  for i in range(1,n+1) :
    sm = sm + (i * i * i)
    print ("%d*%d*%d"% (i,i,i), end="")

    if i == n:
      print("=", end="")
    else :
      print("+", end="")
  print(sm)

N = int(input("N의 값을 입력하세요 :"))
square_sum(N)

#c8-2
def square_sum(n) :
  sm = 0
  for i in range(1,n+1) :
    if i % 2 != 0 :
      sm = sm + (i * i * i)
      print ("%d*%d*%d"% (i,i,i), end="")

      if i == n or i == (n-1) :
        print("=", end="")
      else :
        print("+", end="")
  print(sm)

N = int(input("N의 값을 입력하세요 :"))
square_sum(N)


# 회문을 구하는 알고리즘
def is_palindrome(s) :
  for i in range (0,int(len(s))/2) :
    if s[i] != s[len(s)-1-i] :
      return False
    
  return True


string = "rotator"
if is_palindrome(string) :
  print("%s은 회문이다" %string)
else :
  print("%s은 회문이 아니다" %string)


# 문장단어 반대로 하기
def reverse_sentence(sentence) :
  words = sentence.split(" ")
  result = ""
  for word in words :
    result = word + " " + result
  return result


sentence = "Nice to meet you"
print(reverse_sentence(sentence))


# 문자열 존재 여부 판별
def check_word (s,w) :
  if (s.find(w) == -1) :
    print("%s은(는)존재하지 않는다"%(w))
  else :
    print("%s은(는)존재한다"%(w))

string = "A good book is a great friend"
word = "friens"
check_word(string,word)
string.find("is")


# 다수의 문자열 치환하기
def replace_word(s, wl, w) :
  new_str = []
  arr = s.split(" ")
  for si in arr :
    if si in word_list :
        new_str.append(w)
    else :
       new_str.append(si)
  # 리스트를 문자열로 바꾸기
  new_str1 = " ".join(new_str)
  return new_str1

string = "python java apple orange banana"
word_list = ["apple", "orange", "banana"]
word = "fruits"
new_str = replace_word(string,word_list,word)
# print(new_str)
print("치환된 문자열 : " + new_str)


#문자열 위치 이동시키기
def string_shift (string, d, direction) :
  if direction == "left" :
    left_part = string[d:]
    right_part = string[0:d]
  else :
    left_part = string[len(string)-d:]
    right_part = string[0:len(string)-d:]
  result = left_part + right_part
  return result

string = "pythonprogramming"
str_left = string_shift (string, 2, "left")
str_rifht = string_shift (string, 3, "right")
print("좌측으로 2칸이동 " + str_left)
print("우측으로 3칸이동 " + str_rifht)


#c8-4
def count_word(s) :
  arr = s.split(" ")
  return len(arr) # len(리스트) 리스트안에 요소들의 갯수를 반환한다

string = "i am a student"
num_word = count_word (string)
print("단어의 개수 :", num_word)

#c8-5
def del_word(s,w) :
  arr = s.split(" ")
  arr.remove(w)
  result = " ".join(arr)
  return result

string = "Don't cry before you are the hurt"
word = "the"
new_str = del_word(string,word)
print("변경된 문자열 :", new_str)

#선형탐색, 순차탐색, 앞에서부터 차례대로 찾기, 정렬이 안된 자료 찾기
# 검색횟수 최악인경우 n회만에 찾는다

#이진탐색, 이분탐색, 전제조건 : 정렬이 되어야한다
#최악 시간의 복잡도가 logN
def find_max(n) :
  mx = n[0]
  for i in range(1, len(n)) :
    if n[i] > mx :
      mx = n[1]
  return mx
data = [5,-3,12,8,2]
max_value = find_max(data)
print("선형검색으로 최대값 찾기",max_value)


def binary_scsarch(n,x) :
  start = 0
  end = len(n) -1
  while start <= end :
    mid = (start+end) // 2
    if x == n[mid] :
      return mid
    elif x > n[mid] :
      start = mid + 1
    else :
      end = mid - 1
  return -1


data = [7,16,23,35,40,52,68,78,82]
search_num = 17
index = binary_scsarch(data,search_num)
print(index)
'''
def sent_splite(s) :
 ss = s.split("/")
 for sp in ss :
  print("%s : %d"%(sp ,len(sp)))
sentence = "강아지/사슴/거북이/고릴라/청개구리"
sent_splite(sentence)