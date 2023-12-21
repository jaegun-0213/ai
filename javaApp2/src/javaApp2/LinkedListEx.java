package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LinkedList<Board> boardList = new LinkedList<Board>();
		Board b1 = new Board(1, "제목1", "내용1", "홍길동",LocalDateTime.now());
		Board b2 = new Board(2, "제목2", "내용2", "이순신",LocalDateTime.now());
		Board b3 = new Board(3, "제목3", "내용3", "최경미",LocalDateTime.now());
		boardList.add(b1);
		boardList.add(b2);
		boardList.add(b3);
		
		System.out.println(boardList.get(0).writrt);// b1의 참조변수값이 나온다.
		System.out.println(boardList.get(1).title);
		System.out.println(boardList.get(2).writrt);
		System.out.println(boardList.get(2).wrDate);
		
		Board b0 = new Board(0, "제목0", "내용0", "관리자",LocalDateTime.now());
		boardList.add(0,b0);
		// 최경미가 있습니까?
//		if(boardList.contains(b3)) {
//			System.out.println("있습니다");
//		}else {
//			System.out.println("없습니다");
//		}
		Board boardArress = null; // 찾는 사람의 주소를 담을 변수
		for (int i=0; i<boardList.size(); i++) {
			System.out.println(boardList.get(i).writrt);
			if (boardList.get(i).writrt.equals("최경미")) {
				System.out.println("있습니다");
				boardArress = boardList.get(i);
			}else {
				System.out.println("없습니다");
			}
		}
		System.out.println("찾는 사람 최경미씨가 작성한 게시글 내용은 ?" + boardArress.content);
		
		for(int i=0; i<boardList.size(); i++) {
			System.out.println(boardList.get(i).no);
			if(boardList.get(i).no ==2) {
				boardArress = boardList.get(i);
			}
		}
		System.out.println(boardArress.writrt);
		
		//이순신 삭제하기
		// 생각 1단계 이순신 있는 주소를 찾기 2단계 주소 삭제하기
		for (int i=0; i<boardList.size(); i++) {
			if(boardList.get(i).writrt.equals("이순신")) {
				boardArress = boardList.get(i);
				System.out.println(boardArress);
			}
		}
		//2단계 주소 삭제하기
		boardList.remove(boardArress);
		
		// 모든 게시판 내용 출력하기
		for (int i=0; i<boardList.size(); i++) {
			
			System.out.println(boardList.get(i).toString());
			}
		}
		
	}


//게시판
class Board {
	int no; //게시판 번호
	String title; // 제목
	String content; // 내용
	String writrt; // 작성자
	LocalDateTime wrDate; //작성일
	
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
		return "번호" + no + "제목" + title + "내용" + content + "작성자" + writrt + "작성일" + wrDate;
	}
}