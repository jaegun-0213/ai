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
	// �ۿ� ����� ���� ��� ����� �Ұ��ϴ�
	int a = 10;
	void aM() {}
	static int sa = 20;
	static void saM() {
	}
	
	class Inner {
		// ����Ŭ���� �ܺ� Ŭ������ ��� ����带 ��� �����ϴ�
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
