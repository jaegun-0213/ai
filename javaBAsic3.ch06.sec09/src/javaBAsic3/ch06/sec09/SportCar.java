package javaBAsic3.ch06.sec09;

public class SportCar {

	// 필드 = 항목 = 함수
			int a;
			
			
			// 메소드 = 항수 = 동작
			void aPrinter () {
				 System.out.println(a);
			}
			
			//생성자
			public SportCar() {
				//기본생성자를 객체화할때 초기값을 넣을 때 이용
				// 생성자를 1개라도 안만들면 자바가 기본생성자를 자동으로 만들어준다.
				// 만약에 1개라고 만들면 자바가 안만들어준다.
			}
			
			public SportCar(int a) {
				this.a = a;
			}
			
			class A{
				
			}
}
