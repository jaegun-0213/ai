package javaBASIC03;

public class �������迭 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[][] intArr1 = {{1,2}, {2,3}, {3,4}};
		
		String[][] stringArr1 = { {"a","b","c"}, {"d", "e", "f"}};
		
		boolean[][] booleanArr1 = {{false,true}, {false,true}, {false,true}, {true,true}};
		
		//2���� �迭�� ���� ����ϱ�
		System.out.println( intArr1[2][1]);
		System.out.println( stringArr1[1][1]);
		System.out.println(booleanArr1 [3][0]);
		
		// �迭�ȿ� ��簪 ����ϱ�
		for(int i=0; i< intArr1.length; i++ ) { //i=0 1,2
			for(int j=0; j< intArr1[i].length; i++) {// j=0, 1
				System.out.print(intArr1[i][j] + "  ") ; // ������ ����ϱ�
			}
			System.out.println( );// �ٹٲٱ�
		}
	}
}
