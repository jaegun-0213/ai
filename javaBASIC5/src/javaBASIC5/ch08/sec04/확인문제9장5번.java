package javaBASIC5.ch08.sec04;

public class È®ÀÎ¹®Á¦9Àå5¹ø {

	public static void printSound(Soundeable soundable) {
		System.out.println(soundable.sound());
	}
	
	
	public static void main(String[] args) {
		Remocon remocon = new Tv();
		remocon.powerOn();

		
		printSound(new Cat() );
		printSound(new Dog() );
	}

}

interface Soundeable {
	public String sound ();
}

class Cat implements Soundeable {

	@Override
	public String sound() {
		// TODO Auto-generated method stub
		return "¾ß¿ë";
	}
	
}
class Dog implements Soundeable{

	@Override
	public String sound() {
		// TODO Auto-generated method stub
		return "¸Û¸Û";
	}
	
}



interface Remocon {
	public void powerOn();
}

class Tv implements Remocon {

	@Override
	public void powerOn() {
		System.out.println("Tv¸¦ Ä×½À´Ï´Ù");
		
	}
	
}