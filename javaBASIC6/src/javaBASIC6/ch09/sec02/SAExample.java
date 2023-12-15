package javaBASIC6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AA a1 = new AA();
		System.out.println(a1.aa);
		System.out.println(AA.sa);
		System.out.println(AA.BB.bb);
		
		AA.BB ab1 = new AA.BB();
		System.out.println(ab1.ibb);
		ab1.bbM();
		ab1.ibb();
	}

}
class AA{
	
	int aa = 20;
	void aaM() {
		
	}
	static int sa = 10;
	static void saM() {
		
	}
	
	
static	class BB {
		static int bb = 20;
		static void sbbM() {
			
		}
		int ibb =30;
		void ibb() {
			ibb = ibb+40;
			bbM();
		}
		void bbM() {
			AA.sa = 100;
			AA.saM();
		}
	}
}