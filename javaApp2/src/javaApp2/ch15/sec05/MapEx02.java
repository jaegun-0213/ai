package javaApp2.ch15.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class MapEx02 {

	public static void main(String[] args) {
		// Map
		Member m1 = new Member("a100", 123);
		Member m2 = new Member("a200", 456);
		Member m3 = new Member("a300", 789);
		
		// Map 키는 1 값은 m1,
		HashMap<Integer, Member> hmap = new HashMap<Integer,Member>();
		
		//데이터 입력하기
		hmap.put(1, m1);
		hmap.put(2, m2);
		hmap.put(3, m3);
		
		//"a300", 789 출력하기
		System.out.println(hmap.get(3));
		
		// 키들만 출력하기
		Set<Integer> s = hmap.keySet();
		Iterator<Integer> it = s.iterator();
		while(it.hasNext()) {
			Integer itkey = it.next();
			System.out.println(itkey + "  " + hmap.get(itkey));
		}
		
		 // Map예제 키 - id 값 pwd
//		Member m1 = new Member("a100", 123);
//		Member m2 = new Member("a200", 456);
//		Member m3 = new Member("a300", 789);
		
		HashMap<Member, Integer> hMap2= new HashMap<Member, Integer>();
		 
		hMap2.put(m1, m1.pwd);
		hMap2.put(m2, m2.pwd);
		hMap2.put(m1, m1.pwd);
		
		// a100일때 pwd는 ?
		System.out.println(hMap2.get(m1));
		
		Member m4 = new Member("a300", 789);
		hMap2.put(m1, m1.pwd);
		
		Member m5 = new Member("a300", 789);
		hMap2.put(m5, m5.pwd);
		
		System.out.println(hMap2.size());
		//동등객체를 id와 pwd 갇으면 갇은 것 코딩하려면
		
		Set<Member>  keys1 = hMap2.keySet();
		Iterator<Member> it2 = keys1.iterator();
		while(it2.hasNext()) {
			System.out.println(it2.next());
		}
		
	}

}
class Member{
	String id;
	Integer pwd;
	
	public Member(String id, Integer pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " " + pwd;
	}
	
	@Override
	public int hashCode() {
		// 동등객체 판단은 해시코드()가 같고 이콜스() 같으면 동등객체임
		// TODO Auto-generated method stub
		return id.hashCode() + pwd.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Member) {
			Member m = (Member) obj;
			if(id.equals(m.id) && pwd==m.pwd) return true;
		}
		return false;
	}
	
}