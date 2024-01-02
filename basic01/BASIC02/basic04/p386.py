import json

with open("./basic02/member.json", "r", encoding="utf-8") as f :
  dict = json.load(f)

  print(dict)
  print(dict['name'])
  print(dict['history'][0]['data'])
  print(dict['history'][1]['route'])
  print(dict['avg'])


with open("./basic02/b.json", "r", encoding="utf-8") as f1 :
  dict2 = json.load(f1)

  print(dict2)
  print(dict2['contactNumbers'][0]['type'])
  print(dict2['favoriteSports'][0])
