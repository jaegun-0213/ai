package javaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		 Phon p = new Phon();
		 p.bell();
		 
		 p.sendVoice("잘잤어?");
		 p.receiveVoice("잘잤어 너도 잘잤어?");
		 
		 SmartPhone sp = new SmartPhone();
		 sp.sendVoice("오늘 뭐할거야?");
		 sp.receiveVoice("오늘은 공부할거야");
		 sp.hangup();
		 
		 
		  SmartPhone sp2 = new SmartPhone ("아이폰", "흰색");
		  
		  //아이폰은 와이파이가 출력하기
		  System.out.println(sp2.model);
		  sp2.setwifi(true);
		  
		  if(sp2.wifi) {
			  System.out.println(sp2.model + "은와이파이가 됩니다");
		  } else {
			  	System.out.println(sp2.color + "핸드폰은 와이파이가 안됩니다");
		  }
		  
		  //아이폰은 흰색이고 벨이 울립니다.
		  System.out.println(sp2.model + "은" + sp2.color + "이고" );
		  sp2.bell();
		  
		  //아이폰의 메세지가 왔습니다. "자기 : 핸드폰샀어?"
		  System.out.println(sp2.model + "의 메세지가 왔습니다.");
		  sp2.sendVoice("핸드폰 샀어?");
		  
		  // 부모클래스에서 자식의 와이파이 필드,메소드 사용하기
		 /* 부모클래스는 자식의 멤버들을 쓸 수 없다.
		  p.wait = true;
		  
		  p.setWifi(trus);
		  
		  p.internet(); */
	}

}
