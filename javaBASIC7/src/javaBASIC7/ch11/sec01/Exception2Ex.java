package javaBASIC7.ch11.sec01;

public class Exception2Ex {

	public static void main(String[] args) {
		try {
		A a = new A();
		a.a1();
		} catch(ArithmeticException e) {
			System.out.println(e.getMessage() + "분모가 0 오류");
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println(e.getMessage() + " 배열의 오류가있음");
		} catch (NullPointerException e) {
			System.out.println(e.getMessage() + "null 오류가 있음");
		} finally {
			System.out.println("DB닫기");
			System.out.println("로그오프하기");
		}

	}

}

class A  {

	void a1() throws ArithmeticException , ArrayIndexOutOfBoundsException,NullPointerException{
		a2();
	}
	void a2() throws ArithmeticException , ArrayIndexOutOfBoundsException,NullPointerException{
		a3();
		printength("java");
		printength(null);
		
	}
	static void printength(String data) {
		int result = data.length();
		System.out.println("문자 수는 :" + result);
	}
	void a3() throws ArithmeticException , ArrayIndexOutOfBoundsException {
		a4();
		double[] dArr = {1.1, 2.2, 3.3};
		System.out.println(dArr[2]); // 예외 발생
	}
	void a4() throws ArithmeticException{
		int a= 10;
		a = a/2; // 예외발생
		System.out.println(a);
	}
}