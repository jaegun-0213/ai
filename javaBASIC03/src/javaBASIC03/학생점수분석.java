package javaBASIC03;

import java.util.Scanner;

import javax.sql.rowset.CachedRowSet;

public class �л������м� {

	public static void main(String[] args) {
		// Ű���� �л� �� �Է�, �л��� ���� �Է� �޴´�.
		
		Scanner sc = new Scanner(System.in);
		
		int menu = 1; // ���� ����
		int studentcount = 0; // �л���
		int[] score = null; // �迭 ����
		int max = 0; //�ְ�����
		double avg = 0.0; //���
		int sum=0; //�հ�
		
		while( menu !=5 ) {
			System.out.println("--------------------------------------------");
			System.out.println("1.�л��� | 2.�����Է� | 3��������Ʈ | 4.�м� | 5.����");
			System.out.println("--------------------------------------------");
			System.out.print("����>");
			menu = sc.nextInt();
			
			switch (menu) {
				case 1: System.out.print("�л���>");
				 		studentcount = sc.nextInt();
				 		score = new int [studentcount];
				 		break;
				case 2: for ( int i=0; i<score.length; i++) {
							System.out.print("score[" + i + "] >");
							score[i] = sc.nextInt();
				}
				break;
				case 3: for (int i=0; i<score.length; i++) {
						System.out.println("score[" + i +"]: " + score[i]);
				}
				break;
				case 4: for ( int i=0; i< score.length; i++) {
						sum= sum + score[i];
						if ( max < score[i]);
						max = score[i];
				}
				avg = sum / (double) score.length;
				
				System.out.println("�ְ�����>" + max);
				System.out.println("���>" + avg);
				break;
				case 5: System.out.println("����");
				default : System.out.println("���ü��� 1~5�߿� �Է����ּ���.");
			}
		}

	}

}
