import csv

# file_name = "./basic3/weater.csv"
# f = (file_name, "r")

# lines = csv.reader(f)
# next(lines) # 열이름 (즉 제목명)을 구해서 제거하기
# for line in lines :
#   if line[1] == "2023-12-27 0:00" :
#      result = line[2]
#      print(result)
# f.close()

read_file_name = "./basic02/weater.csv"
write_file_name = "./basic02/weater_온도.csv"
rf = open (read_file_name, "r")
wf = open (write_file_name, "w")

lines = csv.reader(rf)
wr = csv.writer(wf)
next(lines) # 열이름 (즉 제목명)을 구해서 제거하기
for line in lines :
  if line[1] != "2023-12-27 0:00" :
      result = line[2]
      wr.writerow(line)
rf.close()
wf.close()