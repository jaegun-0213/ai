package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LinkedList<Board> boardList = new LinkedList<Board>();
		Board b1 = new Board(1, "����1", "����1", "ȫ�浿",LocalDateTime.now());
		Board b2 = new Board(2, "����2", "����2", "�̼���",LocalDateTime.now());
		Board b3 = new Board(3, "����3", "����3", "�ְ��",LocalDateTime.now());
		boardList.add(b1);
		boardList.add(b2);
		boardList.add(b3);
		
		System.out.println(boardList.get(0).writrt);// b1�� ������������ ���´�.
		System.out.println(boardList.get(1).title);
		System.out.println(boardList.get(2).writrt);
		System.out.println(boardList.get(2).wrDate);
		
		Board b0 = new Board(0, "����0", "����0", "������",LocalDateTime.now());
		boardList.add(0,b0);
		// �ְ�̰� �ֽ��ϱ�?
//		if(boardList.contains(b3)) {
//			System.out.println("�ֽ��ϴ�");
//		}else {
//			System.out.println("�����ϴ�");
//		}
		Board boardArress = null; // ã�� ����� �ּҸ� ���� ����
		for (int i=0; i<boardList.size(); i++) {
			System.out.println(boardList.get(i).writrt);
			if (boardList.get(i).writrt.equals("�ְ��")) {
				System.out.println("�ֽ��ϴ�");
				boardArress = boardList.get(i);
			}else {
				System.out.println("�����ϴ�");
			}
		}
		System.out.println("ã�� ��� �ְ�̾��� �ۼ��� �Խñ� ������ ?" + boardArress.content);
		
		for(int i=0; i<boardList.size(); i++) {
			System.out.println(boardList.get(i).no);
			if(boardList.get(i).no ==2) {
				boardArress = boardList.get(i);
			}
		}
		System.out.println(boardArress.writrt);
		
		//�̼��� �����ϱ�
		// ���� 1�ܰ� �̼��� �ִ� �ּҸ� ã�� 2�ܰ� �ּ� �����ϱ�
		for (int i=0; i<boardList.size(); i++) {
			if(boardList.get(i).writrt.equals("�̼���")) {
				boardArress = boardList.get(i);
				System.out.println(boardArress);
			}
		}
		//2�ܰ� �ּ� �����ϱ�
		boardList.remove(boardArress);
		
		// ��� �Խ��� ���� ����ϱ�
		for (int i=0; i<boardList.size(); i++) {
			
			System.out.println(boardList.get(i).toString());
			}
		}
		
	}


//�Խ���
class Board {
	int no; //�Խ��� ��ȣ
	String title; // ����
	String content; // ����
	String writrt; // �ۼ���
	LocalDateTime wrDate; //�ۼ���
	
	public Board(int no, String title, String content, String writrt, LocalDateTime wrDate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writrt = writrt;
		this.wrDate = wrDate;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "��ȣ" + no + "����" + title + "����" + content + "�ۼ���" + writrt + "�ۼ���" + wrDate;
	}
}