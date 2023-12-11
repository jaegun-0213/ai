package javaBAsic3.ch06.sec12;

import java.util.Iterator;

public class Computer {

	
	int sum (int ... values) {
		int sumVar = 0;
		for (int i=0; i<values.length; i++) {
			sumVar += values[i];
		}
		return sumVar;
	}
	
		double avg(double ... values) {
		 for (double i = 0; i<values.length; i++) {
		   double doubleSum = 0.0;
			doubleSum += values[i];	
		 }
		 return doubleSum / values.length;
	}
}
