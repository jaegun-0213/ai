package javaBASIC03;

import java.util.Scanner;

public class ���ڿ����� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String title = "�ڹ������α׷���"; // ���ڿ� ��ü
		String title2 = new String("�ڹ����α׷���");
		
		
		System.out.println(title2.length());
		System.out.println(title2.charAt(1));
		//���� ����ϱ�
		System.out.println(title2.charAt(6));
		title2 = title2.replace("�ڹ�", "java");
		System.out.println(title2);
		
		System.out.println (title2.substring(4, 8) );
		
		System.out.println(title.substring(0, 2));
		
		// ���� �ε��� ��ȣ �˱�
		System.out.println(title.indexOf("��"));
		System.out.println(title.indexOf("��", 4));
		//�ε��� 4�� �ڿ� �ִ� "��"�� ã������
		
		String names = "ȫ�浿,�̼���,�ֹο�";
		String[] nameArr =  names.split(",");
		
		
		for( int i=0; i< nameArr.length; i++) {
			System.out.println( nameArr[i]);
		}
		
		String fruite = "���-��-��-�ٳ���";
		String[] fruit = fruite.split("-");
		
		for ( int i=0; i < fruit.length; i++);
		System.out.println(fruit [0]);
		
		//���� for��
		//���� for ( Ÿ�Ժ��� : ���� ) { �ݺ��� ���� }
		
		// �����߿��� �������ֳ���?
		// ����ֳ���? ��
		
		// Ű�����Է�
		Scanner sc =new Scanner(System.in);
		System.out.println("���� ���� �췡��?");
		String order = sc.nextLine();
		boolean fiag = false; // ������ �ִ��� ������ üũ�ϴ� ����
		for ( String f : fruit) {
			if( order.equals(f)) {
				System.out.println("�ֽ��ϴ�");
				fiag = true;
				break;
			}
		}
		if (!fiag) System.out.println("�����ϴ�");
	}

}
