package model;

public class Data {

	public static String insert0(int i) {
		String s = i + "";
		while (s.length() < 4)
			s = "0" + s;
		return s;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int start = 1;
		int N = 123;
		System.out.println("INSERT INTO `user` (`username`, `password`, `fullname`, `age`) VALUES ");
		for (int i = start; i < start + N; i++) {
			String username = "UserName" + insert0(i);
			String password = "Password" + insert0(i);
			String fullname = "Fullname" + insert0(i);
			int age = ((int) (Math.random() * 10000)) % 60 + 10;
			if (i == start + N - 1)
				System.out.format("('%s', '%s', '%s', %s)\n", username, password, fullname, age);
			else
				System.out.format("('%s', '%s', '%s', %s),\n", username, password, fullname, age);
		}
			 
	}

}
