package javaBASIC5.ch08.sec03;

public class Ȯ�ι���9�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//A a = new  A(); ��üȭ �� �� ����
		// �������̽��� �����Ϸ��� Ŭ������ �����ؼ� �̿��ؾ��Ѵ�.
		AImpl a = new AImpl();
		Driver d = new Driver();
		d.a = new AImpl();
		d.driver(a);
		BB bb = new BB();
		B b = new BB(); //�ڵ�����ȯ
		BB bb2 = (BB) new B(); //��������ȯ
		b.aM();
		//b.bM(); ���Ұ�
		bb2.aM();
		bb2.bM();
	}

}
class Driver{
	A a;
	void driver (A a) {
		a.aM();
	}
}
class B{
	int a = 10;
	void aM () {
		System.out.println(a);
	}
 }

class BB extends B{
	int b=20;
	void bM() {
		System.out.println(b);
	}
}






interface A{ //�������̽�
	//���
	static final int a =10;
	abstract void aM(); //�߻�޼ҵ�
	default void dM() {} //����Ʈ �޼ҵ� �������̵� �� �� �ִ�
	static void sM() {} //���� �޼ҵ�
}

class AImpl implements A{ //����Ŭ����

	@Override
	public void aM() {
		System.out.println(a);
		
	
		
	}
	
}