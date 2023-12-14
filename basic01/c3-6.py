print("아르바이 급여 계산 프로그램")
print ("※시급")
print("-주간 근무 : 9500원")
print("-야간 근무 : 주간 시급*1.5")
print()

hour_pay = 9500

a = int(input("1(주간 근무) 또는 (야간 근무)를 입력해주세요 :"))
work_time = int(input("근무시간을 입력해주세요 :"))

if a == 1 :
  day_night = "주간"
  pay = hour_pay *work_time
else :
  day_night = "야간"
  pay = hour_pay *work_time*1.5
print("%d시간 동안 일한 %s급여는 %d원입니다"%(work_time,hour_pay,pay))