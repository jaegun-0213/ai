package javaApp2.ch15.sec06;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.TreeSet;

public class treeSetEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 TreeSet<Integer> t1= new TreeSet<Integer>();
		 
		 t1.add(87);
		 t1.add(98);
		 t1.add(75);
		 t1.add(95);
		 t1.add(80);
		 t1.add(80);
		 t1.add(80);
		 t1.add(80);

		 System.out.println(t1.size()); //����� ����
		 //�������� ���ĵǾ ��� ��µ�
		 Iterator<Integer> it= t1.iterator();
		 while (it.hasNext()) {
			System.out.println(it.next());
			
		}
		 System.out.println();
		 
		 
		 for( Integer t : t1) {
			 System.out.println(t);
		 }
		 
		 System.out.println();
		 
		 // ���� ���� ������?
		 System.out.println(t1.first());
		 
		 // ���� ���� ������ ?
		 System.out.println(t1.last());
		 
		 // 95�� �Ʒ� ������ ?
		 System.out.println(t1.lower(95));
		 
		// 95���̰ų� �ٷ� �Ʒ� ������ ?
		System.out.println(t1.floor(95));
		
		// 95���̰ų� �ٷ� �� ������ ?
		System.out.println(t1.ceiling(95));
		
		System.out.println();
		// ��������
		NavigableSet<Integer> ds= t1.descendingSet();
		for (Integer d : ds ) {
			System.out.println( d + "~") ;
		}
		
		System.out.println();
		
		// 80 <= x <= 90����
		SortedSet<Integer> st = t1.subSet(80,false, 90,false); // ������ 80 ���� / ������ 80 �������� ����
		for (Integer s : st) {
			System.out.println(s + "~~");
		}
		
		System.out.println();
		
		// Ʈ���� ��尡 87�ֳ��� ?
		System.out.println(t1.contains(87));
		
		//�����ϱ�
		t1.remove(87);
	}

}
