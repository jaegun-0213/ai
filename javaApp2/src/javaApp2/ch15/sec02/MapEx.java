package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Map<Integer, String> m = new HashMap<Integer, String>();
	      
	      // 삽입, 넣기
	      m.put(1, "이순신");
	      m.put(2, "박수연");
	      m.put(3, "홍길동");
	      m.put(3, "홍길동1");
	      m.put(3, "홍길동2");
	      
	      // 출력하기, 꺼내 보기 get()
	      System.out.println(m.get(1)); //키를 넣으면 값이 나온다
	      System.out.println(m.get(3));
	      
	      // 크기 구하기
	      System.out.println(m.size()); //키가 동일하면 동등객체로 판단하고 새로운 것으로 대체한다 즉, 마지막 키의 값으로 남는다
	      
	      //출력하기, 꺼내보기 get()
	      System.out.println(m.get(3));
	      
	      // 삭제하기
	      m.remove(3);
	      
	      
	      // 전체 출력하기
	      // 1단계 키들을 모은다 keyset()
	      // 2단계 키 1개씩 출력한다
	      Set<Integer> mkeys = m.keySet(); // 1단계 키들을 모은다 keyset()
	     
	      Iterator<Integer> it1 = mkeys.iterator();
	      while(it1.hasNext()) {
	    	 // System.out.println( it1.next() + "!!!");
	    	 System.out.println(m.get(it1.next() ) +"@@@"); //values 값 인쇄
	      }
	      
	      
	      
	      System.out.println(m.size() + "~~");
	      
	      // m2에 값 넣기
	      Map<String, Double> m2 = new HashMap<String, Double>();
	      m2.put("a", 2.5);
	      m2.put("b", 3.5);
	      m2.put("b", 3.5);
	      m2.put("b", 3.5);
	      m2.put("b", 13.5);
	      
	      
	      // 3.5 출력
	      System.out.println(m2.get("b"));
	      
	       Map<String, String> m3 = new HashMap<String, String>();
	       
	       m3.put("홍길동", "과장");
	       m3.put("이순신", "부장");
	       m3.put("최경미", "사원");
	       m3.put("홍길동", "사장");
	       
	       // 크기는?
	       System.out.println(m3.size());
	       
	       // 이순신의 직책은?
	       System.out.println(m3.get("이순신"));
	       
	       // 최경미의 직책은?
	       System.out.println(m3.get("최경미"));
	       
	       // 홍길동의 직책은?
	       System.out.println(m3.get("홍길동"));
	       
	       // 최경미가 퇴사
	       m3.remove("최경미");
	       
	       System.out.println(m3.size());
	       
	       //전체 풀력하기
	      System.out.println(m3.get("홍길동"));
	      System.out.println(m3.get("이순신"));
	      
	      //생각 전체 출력하려면 key를 반복해서 넣어주면 된다
	      //keyset() 모든 키를 set() 담는다
	      Set<String> m3Keys = m3.keySet(); // 키들을 담는다
	      
	      Iterator<String> it = m3Keys.iterator();
	      while(it.hasNext( ) ) {
	    	 // System.out.println(it.next()); 키값들이 반복해서 출력
	    	  System.out.println( m3.get (it.next() ) + "###");
	      }
	      
		
		

	}

}
