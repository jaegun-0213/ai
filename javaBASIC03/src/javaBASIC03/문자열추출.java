package javaBASIC03;

import java.util.Scanner;

public class 문자열추출 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String title = "자바프래로그래밍"; // 문자열 객체
		String title2 = new String("자바프로그래밍");
		
		
		System.out.println(title2.length());
		System.out.println(title2.charAt(1));
		//밍을 출력하기
		System.out.println(title2.charAt(6));
		title2 = title2.replace("자바", "java");
		System.out.println(title2);
		
		System.out.println (title2.substring(4, 8) );
		
		System.out.println(title.substring(0, 2));
		
		// 밍의 인덱스 번호 알기
		System.out.println(title.indexOf("밍"));
		System.out.println(title.indexOf("래", 4));
		//인덱스 4번 뒤에 있는 "래"를 찾으세요
		
		String names = "홍길동,이순신,최민영";
		String[] nameArr =  names.split(",");
		
		
		for( int i=0; i< nameArr.length; i++) {
			System.out.println( nameArr[i]);
		}
		
		String fruite = "사과-배-귤-바나나";
		String[] fruit = fruite.split("-");
		
		for ( int i=0; i < fruit.length; i++);
		System.out.println(fruit [0]);
		
		//향상된 for문
		//형식 for ( 타입변수 : 집합 ) { 반복할 내용 }
		
		// 과일중에서 수박이있나요?
		// 사과있나요? 네
		
		// 키보드입력
		Scanner sc =new Scanner(System.in);
		System.out.println("무슨 과일 살래요?");
		String order = sc.nextLine();
		boolean fiag = false; // 과일이 있는지 없는지 체크하는 변수
		for ( String f : fruit) {
			if( order.equals(f)) {
				System.out.println("있습니다");
				fiag = true;
				break;
			}
		}
		if (!fiag) System.out.println("없습니다");
	}

}
