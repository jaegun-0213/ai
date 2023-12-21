package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//List 특징은 순서가 있다. 중복저장이 있다
		
		int[] iarr = {1,2};
		for (int i : iarr) {
			System.out.println(i);
		}
		for (int i=0; i<iarr.length; i++) {
			System.out.println(i);
		}
		
		ArrayList<Integer> arryList = new ArrayList<Integer>();
		// <E> 제네릭 자료의 형을 미리 지정하는 것
		arryList.add(1);
		arryList.add(2);
		System.out.println(arryList.size()); // 어레이리스트안에 몇개의 요소가 있는지를 반환
		// 3,4 추가하기
		arryList.add(3);
		arryList.add(4);
		// 0번인덱스에 -7 넣기
		arryList.add(0, -7);
		
		for (int i=0; i<arryList.size(); i++) {
			System.out.println(arryList.get(i));
		}
		ArrayList<String> sArr = new ArrayList<String>();
		
		sArr.add("사과");
		sArr.add("배");
		sArr.add("귤");
		sArr.add("바나나");
		sArr.add(3, "파인애플");
		sArr.add(1, "메론");
		sArr.set(3, "천헤향");
		sArr.add("사과");
		sArr.add("사과");
		sArr.remove(5);
		sArr.remove("파인애플");
		for (int i=0; i<sArr.size(); i++) {
			System.out.print(sArr.get(i) + " ");
		}	
		
		if (sArr.contains("파인애플")) {
			System.out.println("있습니다.");
		}else {
			System.out.println("없습니다.");
		}
		
		if (sArr.contains("사과") && sArr.contains("배")) {
			System.out.println("있습니다");
		}else {
			System.out.println("없습니다");
		}
		
		if(!sArr.isEmpty()) {
			sArr.clear();
			System.out.println("가게 물건을 모두 치워주세요");
		}

	}

}
