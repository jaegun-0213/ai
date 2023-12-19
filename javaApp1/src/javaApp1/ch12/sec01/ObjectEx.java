package javaApp1.ch12.sec01;

public class ObjectEx extends Object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 오브젝트의 ㅁ소드는 모든 클래스들이 다 쓸 수 있다 . 재 정의 할 수 있다.
		
		Member obj1 = new Member("bule");
		Member obj2 = new Member("bule");
		Member obj3 = new Member("red");
		if (obj1 == obj2) { // 둘의 주소가 같나? 다르다
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		

		if (obj1.equals(obj2)) { 
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
		if (obj1.equals(obj3)) { 
			System.out.println("같다");
		} else {
			System.out.println("다르다");
		}
		
	}

}

class Member {
	public String id ; 
	public String pwd;
	
	
	public Member (String id) {
		this.id = id;
	}
	@Override
	public boolean equals(Object obj) { 
		if (obj instanceof Member) {
			Member m = (Member) obj;
		
		if (this.id.equals(m.id)) 
			return true;
		}
		// TODO Auto-generated method stub
		return false;
		
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
		
	}