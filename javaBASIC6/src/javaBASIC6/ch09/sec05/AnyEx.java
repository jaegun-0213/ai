package javaBASIC6.ch09.sec05;

// �͸� Ŭ����
public class AnyEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AA aa = new AA(); // �̸��ִ� �ڽ� Ŭ���� ��üȭ
		aa.iaM();
		
		// �ڽ� �̸����� �ڽ� Ŭ���� ��äȭ�ϱ� - �͸� ��üȭ
		A a = new A() {
			@Override
			void iaM() {
				System.out.println("�̸����� �ڽ�Ŭ������ �����Դϴ� �θ� ��üȭ�� {} �ְ� �ٷ� �ڽ�Ŭ���� ����");
			}
		};
		a.iaM();
	}

}

class A {
	
	void iaM() {
		System.out.println("�θ�Ŭ����");
	}
}
class AA extends A {
	@Override
	void iaM() {
		System.out.println("�ڽ�Ŭ����-�̸��ִ�");
	}
	

}