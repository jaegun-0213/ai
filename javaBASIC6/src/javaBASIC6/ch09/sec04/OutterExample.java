package javaBASIC6.ch09.sec04;

public class OutterExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Outter o = new Outter();
		Outter.Inner  i = o.new Inner();
		i.iaM();

	}

}


class Outter {
	// 밖에 멤버는 안의 멤버 사용이 불가하다
	int a = 10;
	void aM() {}
	static int sa = 20;
	static void saM() {
	}
	
	class Inner {
		// 내부클랫는 외부 클래스의 모든 멤버드를 사용 가능하다
		int ia =  100;
		void iaM() {
			ia = ia +20;
			a = a+20;
			aM();
			Outter.sa = Outter.sa +100;
			Outter.saM();
		}
		
	}
}
