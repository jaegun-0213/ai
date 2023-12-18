package javaBASIC6.ch09.sec05;

public class Any2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		CImle cj = new CImle();
		cj.cM();
		
		C cj2 = new CImle();
		cj2.cM();
		
		// 익명 구현 객체
		C cj3 = new C() {

			@Override
			public void cM() {
				System.out.println("익명구현클래스의 메소드");
				
			}
			
		};
		
		cj3.cM();
	}

}
interface C{
	abstract void cM();
}

class CImle implements C{

	@Override
	public void cM() {
		System.out.println("구현 클래스 (자식) 메소드");
		
	}
	
	
}