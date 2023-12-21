my_list = ["p","y","t","h","o","n","i","s","f","u","n","!"]
print(my_list[5:11])
print(my_list[-5:-2])
print(my_list[8:])
print(my_list[:4])

string = "i am genious!"
list = []
for i in range(0,len(string)) :
  list += string[i]
print(list)

while len(list) < len(string) :
  for i in range(0,len(string)) :
    list += string[i]
print(list)

numbers = [7,9,15,18,30,-3,7,12,-16,-12]
sum = 0
for i in range(0,len(numbers)) :
  sum = sum + numbers[i]
print(sum)

numbers = [7,9,15,18,30,-3,7,12,-16,-12]
sum = 0
j=0
while j < len(numbers) :
  for i in range(len(numbers)) :
    sum = sum + numbers[i]
    j += 1
print(sum)

count = 0
sm =0
while count < len(numbers) :
  if count % 2 != 0:
    print(numbers[count], end=" ")
    sm += numbers[count]
  count+=1
print(sm)