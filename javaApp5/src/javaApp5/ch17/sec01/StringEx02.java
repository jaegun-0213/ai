package javaApp5.ch17.sec01;

import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StringEx02 {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		// 목표 : 1단계 컬렉션, 배열을 스트림으로 만든 방법을 상세 배움
		
		List<Product> list = new ArrayList<Product>();
		
		
		// 자료넣기
		 for ( int i=1; i <= 5; i++) {
			 Product product = new Product(i, "상품" + i, "멋진회사", (int)(10000*Math.random() ) ); // 0.0 <= Math.random() < 1.0
			 list.add(product);
		 }
		 
		// 컬렉션으로 된 걸 스트림으로 만들기
		Stream<Product> stream = list.stream();
		stream.forEach(p->System.out.println(p));
		
		System.out.println();
		
		// 위 코드 줄이기
		list.stream()
			.forEach(p->System.out.println(p));
		
		System.out.println();
		
		// 배열을 스트림으로 만들기
		String[] strArr = {"홍길동", "신용권", "김미나", "신주미"};
		Stream<String> streamStr = Arrays.stream(strArr); // 배열이 오리지널 스트림으로 바뀐다
		
		//boolean test(T t);
		streamStr.filter(t -> t.startsWith("신") )
				.forEach(p -> System.out.println(p));
		
		
		System.out.println();
		
		// 숫자 범위로 스트림 얻기
		// 요구사항 1~100까지 합 구하기
		IntStream intStream = IntStream.range(1, 101);
		System.out.println(intStream.count() ); // 최종스트림으로 오리지널 스트림 자료로 소멸된다
		
		intStream = IntStream.range(1, 101); // 다시 오리지널스트림을 만들어 주어야한다.
		System.out.println(intStream.max().toString() );
		
		intStream = IntStream.range(1, 101);
		System.out.println(intStream.min().toString());
		
		
		System.out.println();
		
		//파일로부터 스트림 얻기
		
		// 현재 프로그램으로 자료 가져오기
		Path path = Paths.get(StringEx02.class.getResource("date.tex").toURI() );
		
		// 해당 결로의 파일을 스트림으로 바꾸어 준다. 문자의 유니코드는 자바의 기본 유니코드(UTF-8)을 이용한다.
		Stream<String> fileStream = Files.lines(path);
		fileStream.forEach(p -> System.out.println(p));
		fileStream.close(); // 파일의 메모리 닫기
		
		
		
	}

}

class Product {
	
	private int pno;
	private String name;
	private String company;
	private int price;
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return pno + " " + name + " " + company + " "  + price; 
	}
	
	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Product(int pno, String name, String company, int price) {
		super();
		this.pno = pno;
		this.name = name;
		this.company = company;
		this.price = price;
	}
}
