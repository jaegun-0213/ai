package javaBASIC03;

public class Ȯ�ι���5�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		//6
		int[][] array = {
				{95, 86},
				{83,92,96},
				{78,83,93,87,88}
		}; 
		
		System.out.println(array.length);
		System.out.println(array[2].length);
		
		
		//7 �ִ밪 ���ϱ�
		int[] array1 = {1, 5, 3, 8, 2};
		int max = array1[0];
		for (int i=0; i< array1.length; i++) {
			if (array1[i] > max);
			max = array1 [i];
		}
		System.out.println(max);
		
		int[] array2 = {1, 5, 3, 8, 2};
		int mine = 100;
		for (int i=0; i<array2.length; i++) {
			if (array2[i] < mine);
		}
		
		//8
		int[][] array3 = {
				{95, 86},
				{83, 92, 96},
				{78,83, 93,87, 88}
		};
		int sum =0;
		for ( int i=0; i<array3.length; i++) { //���� ���̸�ŭ �ݺ�
			for ( int j =0; j<array3[i].length; i++) { // ���� ���̸�ŭ �ݺ�
				sum = sum + array3[i][j];
			}
		}
		// ���� 10�� ��� ���ұ�?
		System.out.println( array3[0].length + "~~");
		int count = array3[0].length + array3[1].length + array3[2].length;
		System.out.println( count + "~~");
		
		System.out.println(" �հ�" + sum);
		
		double avg = sum/(double) count;
		System.out.println("�����" + avg);
	}

}
