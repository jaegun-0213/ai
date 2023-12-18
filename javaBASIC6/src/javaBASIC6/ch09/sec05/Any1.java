package javaBASIC6.ch09.sec05;

public class Any1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 B b = new B();
		 b.bM();
		 
		 
		 B bb = new B() {
			 // 이름없는 익명 자식 클래스
			 
			 int b = 20;
			 @Override
			void bM() {
				System.out.println("자식 메소드" + 20);
			}
		 };
		 
		 bb.bM();
		 
	}

}

class B{
	void bM() {
		System.out.println("부모메소드");
	}
}
