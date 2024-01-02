# 딕셔너리를 json으로 인코딩하기
"""
import json

member = {
            "id": "swhong",
            "name": "홍성우",
            "avg": 23,
            "history": [
              {"data": "2021-03-15", "route": "mobile"},
              {"data": "2020-06-23", "route": "PC"}]
}

string = json.dumps(member,ensure_ascii=False, indent=4)
print(string)
"""
# *** 중요 파이썬의 딕셔너리를 제이썬파일로 만들기
# 제이썬파일을 다른 곳에서 이용하면 된다
import json

k = {
            "id": "kim",
            "name": "김유신",
            "avg": 25,
            "history": [
              {"data": "2021-03-15", "route": "mobile"},
              {"data": "2020-06-23", "route": "PC"}]
}

with open ("./basic02/member.json", "a", encoding="utf-8") as f:
  json.dump(k,f, ensure_ascii=False, indent=8)


