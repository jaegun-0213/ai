n = int(input("n값을 입력하세요"))

def nMul (n) :
  result = []
  for i in range(1, n+1 ) :
    result.append(i*i)
  return result


resultlist= nMul(n)
print (resultlist)