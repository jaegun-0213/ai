
date =list(range(1,21))

for i in range(0,len(date)) :
  print("%d" %date[i], end=" ")

#5-2
print()
for i in range(1,len(date),2) :
  print("%d"%date[i], end=" ")

#5-3
print()
for i in range(0, len(date),2) :
  print("%d"%date[i], end=" ")
print()
i =0
while i < len(date) :
  print("%d"%date[i], end=" ")
  i += 2
print()
#5-4
date = []
for x in range(10,21) :
  date.append(x)

print(date)