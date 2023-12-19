package javaApp1.ch12.sec01;

public class EqualEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Netplex n1 = new Netplex("100", "a123", "a1234");
		Netplex n2 = new Netplex("100", "a124", "a1235");
		Netplex n3 = new Netplex("100", "a125", "a1236");
		Netplex n4 = new Netplex("100", "a126", "a1237");
		
		Netplex n5 = new Netplex("200", "a127", "a1238");
		Netplex n6 = new Netplex("300", "a128", "a1239");
		
		if ( n5.equals(n6)) {
			System.out.println("°°Àº°´Ã¼");
		}else {
			System.out.println("´Ù¸¥°´Ã¼");
		}

	}

}
class Netplex {
	
	String key;
	String id;
	String pwd;
	
	
	public Netplex(String key, String id, String pwd) {
		super();
		this.key = key;
		this.id = id;
		this.pwd = pwd;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return key.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Netplex) {
			Netplex np = (Netplex)obj;
			if ( this.key.equals(np.key)) {
				return true;
			}
		}
		// TODO Auto-generated method stub
		return false;
	}
}