package javaBASIC6.ch09.sec05;

public class Any1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 B b = new B();
		 b.bM();
		 
		 
		 B bb = new B() {
			 // �̸����� �͸� �ڽ� Ŭ����
			 
			 int b = 20;
			 @Override
			void bM() {
				System.out.println("�ڽ� �޼ҵ�" + 20);
			}
		 };
		 
		 bb.bM();
		 
	}

}

class B{
	void bM() {
		System.out.println("�θ�޼ҵ�");
	}
}
