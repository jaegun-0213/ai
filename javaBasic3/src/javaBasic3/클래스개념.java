//package javaBasic3;
//
//public class �겢�옒�뒪媛쒕뀗 {
//
//	public static void main(String[] args) {
//	
//		// 諛⑸쾿1 媛앹껜 �깮�꽦�븯�옄留덉옄 �꽔�뒗�떎.
//		Student st1 = new Student ("230101", "�솉湲몃룞","AI", 100, "010-1234-5678");
//		
//		Teacher t1 = new Teacher ("A32", "�젙�쁽�씗", "而닿났", 1000000, "�쟾�엫", 20);
//
//		
//		// "230101" 異쒕젰�븯湲�
//		System.out.println(st1.get�븰踰�());
//		
//		// "AI"
//		System.out.println(st1.get�븰怨�());
//		
//		//"�젙�쁽�씗"
//		System.out.println(t1.get�씠由�());
//		
//		//"�쟾�엫"
//		System.out.println(t1.get援щ텇());
//		
//		//100
//		System.out.println(st1.get�젏�닔());
//		
//		//20
//		System.out.println(t1.get�떆�닔());
//		
//		// �븘�슂�븷 �븣留덈떎 �꽔湲�
//		//鍮� 媛앹껜 �깮�꽦�븯湲�
//		Student st2 = new Student();
//		Teacher tc2 = new Teacher();
//		
//		// 媛� �꽔湲�
//		st2.set�븰踰�("2201");
//		st2.set�씠由�("�씠�닚�떊");
//		st2.set�븰怨�("寃쎌쁺�븰怨�");
//		st2.set�젏�닔(85);
//		st2.set�쟾�솕踰덊샇("100-1234-5678");
//		
//		tc2.set肄붾뱶("B101");
//		tc2.set�씠由�("諛뺥씗�뿰");
//		tc2.set�쟾怨�("�뵾�븘�끂");
//		tc2.set湲됱뿬(2000000);
//		tc2.set援щ텇("�떆媛꾧컯�궗");
//		tc2.set�떆�닔(30);
//		
//		System.out.println(st2.get�븰踰�() + "   " + st2.get�씠由�() + "   " + st2.get�븰怨�());
//		System.out.println(tc2.get�쟾怨�() + "   " + tc2.get�씠由�() + "   " + tc2.get援щ텇());
//		
//		
//		
//		
//		
//		//�옄�룞李� �뙋留ㅽ쁽�솴 留뚮뱾湲�
//		
//		// �깮�꽦�옄濡� 媛믪쓣 �꽔湲�
//		�옄�룞李⑦뙋留ㅽ쁽�솴 car1 = new �옄�룞李⑦뙋留ㅽ쁽�솴 ("�떬���럹", 35000000, 15000000, 20000000, 36, 555555);
//		
//		// 鍮� 媛앹껜瑜� �깮�꽦�븯怨�
//		�옄�룞李⑦뙋留ㅽ쁽�솴 car2 = new �옄�룞李⑦뙋留ㅽ쁽�솴();
//		
//		// 鍮� 媛앹껜�뿉 媛믪쓣 �꽔�뼱二쇨린
//		car2.set李⑤웾紐�("肄붾��룄");
//		car2.set李⑤웾珥앹븸(24000000);
//		car2.set�씤�룄湲�(5000000);
//		car2.set�븷遺��썝湲�(19000000);
//		car2.set�긽�솚湲곌컙(24);
//		car2.set�썡�궔�엯湲�(791666);
//		
//		System.out.println();
//		
//		//異쒕젰�븯湲�
//		System.out.println(car1.get李⑤웾紐�() + "  " + car1.get李⑤웾珥앹븸() + "   " + car1.get�씤�룄湲�() +  "   " + car1.get�븷遺��썝湲�() + "   " + car1.get�긽�솚湲곌컙() + "   " + car1.get�썡�궔�엯湲�());
//		System.out.println(car2.get李⑤웾紐�() + "  " + car2.get李⑤웾珥앹븸() + "   " + car2.get�씤�룄湲�() +  "   " + car2.get�븷遺��썝湲�() + "   " + car2.get�긽�솚湲곌컙() + "   " + car2.get�썡�궔�엯湲�());
//		
//		System.out.println();
//		
//		System.out.println("李⑤웾珥앹븸�빀怨�" + (car1.get李⑤웾珥앹븸() + car2.get李⑤웾珥앹븸()   )  );
//		System.out.println();
//		System.out.println("�썡�궔�엯湲덉쓽 珥앹븸��" + (car1.get�썡�궔�엯湲�() + car2.get�썡�궔�엯湲�()   )    );
//		
//		//�떬���럹媛� 李⑥뼇珥앹븸�씠 4000000�쑝濡� �닔�젙�씠 �릺�뿀�떎硫�
//		car1.set李⑤웾珥앹븸(40000000);
//		System.out.println(car1.get李⑤웾紐�() + "  " + car1.get李⑤웾珥앹븸() + "   " + car1.get�씤�룄湲�() +  "   " + car1.get�븷遺��썝湲�() + "   " + car1.get�긽�솚湲곌컙() + "   " + car1.get�썡�궔�엯湲�());
//		
//	
//	}
//
//}
