package javaBASIC7.ch11.sec01;

import java.nio.channels.AcceptPendingException;

public class ExceptionEx {

		public static void printlrngth ( String data) {
			int result = data.length(); // ���ڿ� ���� ���ϱ�
			System.out.println("���� �� :" +result);
		}
	
	public static void main(String[] args) {
		
		
		// TODO Auto-generated method stub

//	����
//		try {
//		// ���� �߻��� �� ���� �ڵ� ���� ���Ѵ�
//		
//		
//		} catch(���ܸ� ����) {
//			// ���� ���ܰ� �߻����� �� ó���ϴ� �ڵ� �ۼ�
//		}
		
		
		try {
			int a =10;
			a = a/2;
			System.out.println(a);
			int[] iArr = {10,20,30};
			System.out.println(iArr[2]);
		
			printlrngth("This is java");
			printlrngth("aa"); // null ���� �ڷᰡ ����.
			
			Class.forName("java.lang.ABC");
			
			} catch (ArithmeticException e) {
			System.out.println(" �и� 0�̸� �ȵȴ�");
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("�迭�� �ε��������� ������ϴ�");
		} catch (NullPointerException e) {
			e.printStackTrace();
			System.out.println("null �����ؼ� ������ �����ϴ�.");
//		} catch (ClassNotFoundException e) {
//			System.out.println("Ŭ�������� Ʋ�Ƚ��ϴ�");
//			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("��� ������ �θ�Ŭ����");
		} 
		finally {
			// ���� ������� ������ (��,�ʼ�)ó��
			System.out.println("DB�ݱ�");
			System.out.println("�α׿����ϱ�");
		}
		
		
	}

}
