package javaApp5.ch17.sec03;

import java.util.*;
import java.util.stream.*;

public class StreamEx03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//�߰� ��Ʈ�� ������ 2
		List<String> list1 = new ArrayList<>();
		list1.add("this is java");
		list1.add("i am a best developer");
		
//		String a = "this is java"; 
//		String[] as = a.split(" "); // ��Ʈ���迭�� ���´�
//		for (String s : as) {
//			System.out.println(s);
//		}
		
		//�䱸���� ������ �־ " "���� �� �κ��� �߶� �ܾ ����ϱ�
		list1.stream()
			.flatMap(t ->Arrays.stream( t.split(" ") ) )
			.forEach(p -> System.out.println(p));
		
		List<String> list2 = Arrays.asList("10, 20,  30  ", "40,50");
		
		
		int result = 
				list2.stream()
				.flatMapToInt(t -> {	
					String[] ss = t.split(",");
					int[] intArr = new int[ss.length];
					for (int i=0; i<ss.length; i++) {
						intArr[i] = Integer.parseInt (ss[i].trim());
					}
					return Arrays.stream(intArr);
				})
			.sum();
		System.out.println(result);
		
		
		
		
		System.out.println();
		
		List<String> list3 = Arrays.asList("10.5, 20.7,  30.9  ", "40.1  ,  50.7");
		
		
		double result3 = 
				list3.stream()
				.flatMapToDouble(t -> {	
					String[] ss = t.split(",");
					double[] douArr = new double[ss.length];
					for (int i=0; i<ss.length; i++) {
						douArr[i] = Double.parseDouble(ss[i].trim());
					}
					return Arrays.stream(douArr);
				})
			.sum();
		System.out.println(result3);
		
	}

}
