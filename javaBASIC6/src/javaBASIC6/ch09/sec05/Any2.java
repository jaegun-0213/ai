package javaBASIC6.ch09.sec05;

public class Any2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		CImle cj = new CImle();
		cj.cM();
		
		C cj2 = new CImle();
		cj2.cM();
		
		// �͸� ���� ��ü
		C cj3 = new C() {

			@Override
			public void cM() {
				System.out.println("�͸���Ŭ������ �޼ҵ�");
				
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
		System.out.println("���� Ŭ���� (�ڽ�) �޼ҵ�");
		
	}
	
	
}