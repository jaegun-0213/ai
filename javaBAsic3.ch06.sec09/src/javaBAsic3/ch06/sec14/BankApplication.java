package javaBAsic3.ch06.sec14;

import java.util.Scanner;

//��ī��Ʈ Ŭ���� ����
public class BankApplication {

	Scanner sc = new Scanner(System.in);
	
	Account[] accounts = new Account[100];
	//int[] intArr = new int[100];
	
	int count = 0; // ���»����� ī��Ʈ ����
	
	public void ���»���() {
		accounts[count] = new Account();
		System.out.print("-------");
		System.out.print("���»���");
		System.out.print("-------");
		
		System.out.print("���¹�ȣ :");
		accounts[count].���¹�ȣ =sc.next();
		
		System.out.print("������ :");
		accounts[count].������ =sc.next();
		
		System.out.print("�ʱ��Աݾ� : ");
		accounts[count].�ʱ��Աݾ� =sc.nextInt();
		
		accounts[count].set�ܰ�(accounts[count].�ʱ��Աݾ�);
		
		System.out.print("��� :���°� �����Ǿ����ϴ�.");
		count = count + 1;
		
	}

	public void ���¸��() {
		System.out.print("-------");
		System.out.print("���¸��");
		System.out.print("-------");
		for ( int i=0; i < count; i++) {
			System.out.println(accounts[i].get���¹�ȣ() + "  " + accounts[i].get������() + "  " + accounts[i].get�ܰ�());
		}
		
	}

	public void ����() {
		System.out.print("-------");
		System.out.print("����");
		System.out.print("-------");
		System.out.println("���¹�ȣ");
		String �����Ұ��¹�ȣ = sc.next();
		
		//���� �������� Ȯ���ϱ�
		System.out.println(" ���ݾ�");
		int ���ݱݾ� = sc.nextInt();
		
		int i;
		boolean flag = false;
		for(i=0; i < count; i++) {
			if(�����Ұ��¹�ȣ.equals(accounts[i].get���¹�ȣ())) {
				accounts[i].�ܰ� = accounts[i].get�ܰ�() + ���ݱݾ�; //ȫ�浿 �ܰ� ���ݱݾ��� ���ؼ� ȫ�浿 �ܰ� �־��
				break;}// �ݺ��� �׸��ΰ� i�������� ������־���Ѵ�.
		}
		if(!flag) System.out.println("���¹�ȣ�� Ʋ�Ƚ��ϴ�. Ȯ���ϼ���.");
	}

	public void ���() {
		System.out.print("-------");
		System.out.print("���");
		System.out.print("-------");
		String ����Ұ��¹�ȣ = sc.next();
		System.out.println(" ��ݾ�");
		
		int ��ݱݾ� = sc.nextInt();
		
		int i;
		for (i=0; i <count; i--) {
			if (����Ұ��¹�ȣ.equals(accounts[i].get�ܰ�() - ��ݱݾ�)) {
				break;
			}
		}
		
	}

	
	
	// ���»���
	
	//���� ���
	
	//����
	
	//���
	
	//����
}
