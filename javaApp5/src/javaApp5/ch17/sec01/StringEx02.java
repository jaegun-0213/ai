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
		
		// ��ǥ : 1�ܰ� �÷���, �迭�� ��Ʈ������ ���� ����� �� ���
		
		List<Product> list = new ArrayList<Product>();
		
		
		// �ڷ�ֱ�
		 for ( int i=1; i <= 5; i++) {
			 Product product = new Product(i, "��ǰ" + i, "����ȸ��", (int)(10000*Math.random() ) ); // 0.0 <= Math.random() < 1.0
			 list.add(product);
		 }
		 
		// �÷������� �� �� ��Ʈ������ �����
		Stream<Product> stream = list.stream();
		stream.forEach(p->System.out.println(p));
		
		System.out.println();
		
		// �� �ڵ� ���̱�
		list.stream()
			.forEach(p->System.out.println(p));
		
		System.out.println();
		
		// �迭�� ��Ʈ������ �����
		String[] strArr = {"ȫ�浿", "�ſ��", "��̳�", "���ֹ�"};
		Stream<String> streamStr = Arrays.stream(strArr); // �迭�� �������� ��Ʈ������ �ٲ��
		
		//boolean test(T t);
		streamStr.filter(t -> t.startsWith("��") )
				.forEach(p -> System.out.println(p));
		
		
		System.out.println();
		
		// ���� ������ ��Ʈ�� ���
		// �䱸���� 1~100���� �� ���ϱ�
		IntStream intStream = IntStream.range(1, 101);
		System.out.println(intStream.count() ); // ������Ʈ������ �������� ��Ʈ�� �ڷ�� �Ҹ�ȴ�
		
		intStream = IntStream.range(1, 101); // �ٽ� �������ν�Ʈ���� ����� �־���Ѵ�.
		System.out.println(intStream.max().toString() );
		
		intStream = IntStream.range(1, 101);
		System.out.println(intStream.min().toString());
		
		
		System.out.println();
		
		//���Ϸκ��� ��Ʈ�� ���
		
		// ���� ���α׷����� �ڷ� ��������
		Path path = Paths.get(StringEx02.class.getResource("date.tex").toURI() );
		
		// �ش� ����� ������ ��Ʈ������ �ٲپ� �ش�. ������ �����ڵ�� �ڹ��� �⺻ �����ڵ�(UTF-8)�� �̿��Ѵ�.
		Stream<String> fileStream = Files.lines(path);
		fileStream.forEach(p -> System.out.println(p));
		fileStream.close(); // ������ �޸� �ݱ�
		
		
		
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
