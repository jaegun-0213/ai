package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//List Ư¡�� ������ �ִ�. �ߺ������� �ִ�
		
		int[] iarr = {1,2};
		for (int i : iarr) {
			System.out.println(i);
		}
		for (int i=0; i<iarr.length; i++) {
			System.out.println(i);
		}
		
		ArrayList<Integer> arryList = new ArrayList<Integer>();
		// <E> ���׸� �ڷ��� ���� �̸� �����ϴ� ��
		arryList.add(1);
		arryList.add(2);
		System.out.println(arryList.size()); // ��̸���Ʈ�ȿ� ��� ��Ұ� �ִ����� ��ȯ
		// 3,4 �߰��ϱ�
		arryList.add(3);
		arryList.add(4);
		// 0���ε����� -7 �ֱ�
		arryList.add(0, -7);
		
		for (int i=0; i<arryList.size(); i++) {
			System.out.println(arryList.get(i));
		}
		ArrayList<String> sArr = new ArrayList<String>();
		
		sArr.add("���");
		sArr.add("��");
		sArr.add("��");
		sArr.add("�ٳ���");
		sArr.add(3, "���ξ���");
		sArr.add(1, "�޷�");
		sArr.set(3, "õ����");
		sArr.add("���");
		sArr.add("���");
		sArr.remove(5);
		sArr.remove("���ξ���");
		for (int i=0; i<sArr.size(); i++) {
			System.out.print(sArr.get(i) + " ");
		}	
		
		if (sArr.contains("���ξ���")) {
			System.out.println("�ֽ��ϴ�.");
		}else {
			System.out.println("�����ϴ�.");
		}
		
		if (sArr.contains("���") && sArr.contains("��")) {
			System.out.println("�ֽ��ϴ�");
		}else {
			System.out.println("�����ϴ�");
		}
		
		if(!sArr.isEmpty()) {
			sArr.clear();
			System.out.println("���� ������ ��� ġ���ּ���");
		}

	}

}
