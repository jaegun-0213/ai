package javaApp5.ch18.sec01;

import java.io.*;

public class DataInputSrteamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// �⺻Ÿ������ ������ϵ��� �����ִ� ������Ʈ��
		
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\date\\p.db");
			DataOutputStream dos= new DataOutputStream(os);
			
			dos.writeUTF("ȫ�浿"); // �ѱ��� �����Ϸ���
			dos.writeDouble(95.5);
			dos.write(1);
			
			dos.writeUTF("���ڹ�");
			dos.writeDouble(90.3);
			dos.write(2);
			
			dos.flush();
			dos.close();
			
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\date\\p.db");
			BufferedInputStream bis = new BufferedInputStream(is);
			DataInputStream dis= new DataInputStream(bis);
			
			String name = dis.readUTF(); // �ѱ۷� ����ȰŸ� �о������
			double score = dis.readDouble();
			int no = dis.read();
			System.out.println(name + "  " + score + "  " + no);
			
			name = dis.readUTF(); // �ѱ۷� ����ȰŸ� �о������
			score = dis.readDouble();
			no = dis.read();
			System.out.println(name + "  " + score + "  " + no);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
