package javaBASIC6.ch09.sec03;

public class LocaIEXample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		LocaIEXample le  = new LocaIEXample();
		le.localM();

	}

	public void localM() {
		int a= 10;
		
		class AAA{
			int sa = 100;
			void m() {
				System.out.println("�޼ҵ�ȿ� �ִ� Ŭ������ �޼ҵ�");
			}
		}
		
		AAA aaa = new AAA(); // ��ü����
		aaa.m(); // ����ϱ�
		
		
	}
}
