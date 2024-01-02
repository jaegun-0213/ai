import csv

rf = open ("./basic02/a.csv", "r")
wf = open ("./basic02/a.csv","w")

r = csv.reader(rf)
w = csv.writer(wf)

for i in range(3) :
  line = next(r)
  w.writerow(line)


rf.close()
wf.close()