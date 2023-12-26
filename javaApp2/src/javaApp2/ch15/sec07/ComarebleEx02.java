package javaApp2.ch15.sec07;

import java.util.NavigableSet;
import java.util.TreeSet;

public class ComarebleEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Board b1 = new Board(1, "����1", "�ۼ���1");
		Board b2 = new Board(4, "����8", "�ۼ���9");
		Board b3 = new Board(3, "����0", "�ۼ���10");
		Board b4 = new Board(2, "����2", "�ۼ���8");
		
		TreeSet<Board> ts = new TreeSet<Board>();
		ts.add(b1);
		ts.add(b2);
		ts.add(b3);
		ts.add(b4);
		
		
		for(Board b : ts) {
			System.out.println(b);
		}
		
		// ��ȣ�������
		
		// �ۼ��� �������
		
		NavigableSet<Board>  nn =ts.descendingSet();

	}

}


// �Խ��� ��ü
class Board implements Comparable<Board> {
	
	Integer no ; // �Խ��� ��ȣ
	String title; // �Խ��� ����
	String writer; // �Խñ� �ۼ���
	
	public Board(Integer no, String title, String writer) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return no + " " + title + " " + writer;
	}

	@Override
	public int compareTo(Board o) {
//		if (no == o.no) return 0;
//		else if (no < o.no) return -1; 
		return writer.compareTo(o.writer);
	}
	
	
	
	
}