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

		 System.out.println(t1.size()); //노드의 갯수
		 //오름차순 정렬되어서 모두 출력됨
		 Iterator<Integer> it= t1.iterator();
		 while (it.hasNext()) {
			System.out.println(it.next());
			
		}
		 System.out.println();
		 
		 
		 for( Integer t : t1) {
			 System.out.println(t);
		 }
		 
		 System.out.println();
		 
		 // 가장 낮은 점수는?
		 System.out.println(t1.first());
		 
		 // 가장 높은 점수는 ?
		 System.out.println(t1.last());
		 
		 // 95점 아래 점수는 ?
		 System.out.println(t1.lower(95));
		 
		// 95점이거나 바로 아래 점수는 ?
		System.out.println(t1.floor(95));
		
		// 95점이거나 바로 위 점수는 ?
		System.out.println(t1.ceiling(95));
		
		System.out.println();
		// 내림차순
		NavigableSet<Integer> ds= t1.descendingSet();
		for (Integer d : ds ) {
			System.out.println( d + "~") ;
		}
		
		System.out.println();
		
		// 80 <= x <= 90사이
		SortedSet<Integer> st = t1.subSet(80,false, 90,false); // 진실은 80 포함 / 거짓은 80 포함하지 않음
		for (Integer s : st) {
			System.out.println(s + "~~");
		}
		
		System.out.println();
		
		// 트리에 노드가 87있나요 ?
		System.out.println(t1.contains(87));
		
		//삭제하기
		t1.remove(87);
	}

}
