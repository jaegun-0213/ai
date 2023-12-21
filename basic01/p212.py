# #2차원 리스트
# number = [[10,20,30],[40,50,60],[60,70,80],['a',[100,90]]]
# print(number[0][0])
# print(number[1][2])
# print(number[2][2])
# print(number[3][0])
# print(number[3][1][0])

# boards = [[1,"작성자1","내용1"],[2,"작성자2","내용2"],[3,"작성자3","내용3"]]
# for i in range(0,len(boards)) :
#   for j in range(0,len(boards[i]) ):
#     print(boards[i][j], end=" ")
#   print()

# # 내용을 모두 출력하기
# jumsu = [[10,20],[30,40,50],[60]]
# print(jumsu[0][0])
# print(jumsu[0][1])
# print(jumsu[1][0])
# print(jumsu[1][1])
# print(jumsu[1][2])
# print(jumsu[2][0])

# jumsu = [[10,20],[30,40,50],[60]]
# for i in range(0,len(jumsu)) :
#   for j in range(0,len(jumsu[i]) ):
#     print(jumsu[i][j], end=" ")
#   print()

# #합계구하기
# sm = 0
# for i in range(0,len(jumsu)) :
#   for j in range (0, len(jumsu[i])) :
#     sm= sm+jumsu[i][j]
# print(sm)

# #sum() 함수 이용해서 구하기
# jumsu = [[10,20],[30,40,50],[60]]
# print(sum(jumsu[0]))
# print(sum(jumsu[1]))

# sm = sum(jumsu[0]) + sum(jumsu[1]) + sum(jumsu[2])
# print(sm)

# sm=0
# for i in range (0,len(jumsu)) :
#   sm+= sum(jumsu[i])
# print(sm)

# string = [["원두커피", "라떼","콜라"],["우동","국수","피자","파스타"]]
# print(string[1][1])

# string[1].remove("피자")
# string[1].remove("파스타")
# print(string[1])


# string = [["원두커피", "라떼","콜라"],["우동","국수","피자","파스타"]]
# findCOlumindex = 99
# for i in range(0, string) : #행만큼 반복
#   findColumindex = string[i].index("원두커피") #열에 대한 인덱스
#   if findColumindex != 99 :
#     findindex = i #행에대한 인덱스
# string[findindex][findCOlumindex] = "아메리카노"

# print(string[0])
# print(string[1])

# 222 리스트로 영화관 예약 가능 좌석

seats = [[0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0],\
        [0,0,0,0,0,0,0,0,0,0,]]

seatscount= int(input("몇좌석을 예약하시겠습니까?"))
count = 1
while seatscount <= seatscount :
  row = int(input("좌석예약하기 행을 입력하기"))
  colum = int(input("좌석예약하기 열을 입력하기"))
  seats[row][colum] = 1
  count += 1
  for i in range(0,len(seats)) :
    
    print("%d행"%i, end=" ")
    for j in range(0,len(seats[i])):
      if seats[i][j] == 0 :
        print("%3s"%"ㅁ", end="")
      else :
        print("%3s"%"■", end="")

    print()

