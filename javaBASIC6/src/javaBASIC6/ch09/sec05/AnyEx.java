package javaBASIC6.ch09.sec05;

// 익명 클래스
public class AnyEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AA aa = new AA(); // 이름있는 자식 클래스 객체화
		aa.iaM();
		
		// 자식 이름없이 자식 클래스 객채화하기 - 익명 객체화
		A a = new A() {
			@Override
			void iaM() {
				System.out.println("이름없는 자식클래스의 내용입니다 부모 객체화에 {} 넣고 바로 자식클래스 만듬");
			}
		};
		a.iaM();
	}

}

class A {
	
	void iaM() {
		System.out.println("부모클래스");
	}
}
class AA extends A {
	@Override
	void iaM() {
		System.out.println("자식클래스-이름있다");
	}
	

}