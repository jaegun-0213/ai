package javaBASIC7.ch11.sec01;

public class Exception3Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
			try { 
			B b = new B();
			 b.b1();
			} catch (ArithmeticException e) {
				System.out.println(e.getMessage() + "����");
			} finally {
				System.out.println("DB�ݱ�");
				System.out.println("�α׿���");
			}

	}

}

class B{
	void b1() throws ArithmeticException{
		b2();
	};
	void b2() throws ArithmeticException{
		int b = 10;
		b= b/5;
		System.out.println(b);
	};
}