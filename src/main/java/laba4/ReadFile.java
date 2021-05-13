package laba4;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="Chitaemsss", urlPatterns="/Chitaem") //���������� �������� � URL
public class ReadFile extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
        request.getRequestDispatcher("/Form.jsp").forward(request, response);
	}
	static String num[] = new String[10];
	private static class RequestCalc {
		private final String s1;
		private final String s2;
		private final String s3;
		private final String s4;
		private final String s5;
		private RequestCalc (String k1,String k2,String k3,String k4,String k5) {
			this.s1 = k1;
			this.s2 = k2;
			this.s3 = k3;
			this.s4 = k4;
			this.s5 = k5;
		}
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("k1"),
			request.getParameter("k2"),
			request.getParameter("k3"),
			request.getParameter("k4"),
			request.getParameter("k5"));
			}	
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			 try {
		            File file = new File("program1.txt");
					 if(file.exists()){				 
		            BufferedReader br = new BufferedReader(new FileReader(file.getAbsolutePath()));
		            num[0]= br.readLine();
		            num[1]= br.readLine();
		            num[2]= br.readLine();
		            num[3]= br.readLine();
		            num[4]= br.readLine();
					 }
			 }
		        catch (Exception e) {
		            System.err.println(e.getMessage());
	 }
		String kek1 = num[0];
		String kek2 = num[1];
		String kek3 = num[2];
		String kek4 = num[3];
		String kek5 = num[4];
		request.setAttribute("keken1", kek1);
		request.setAttribute("keken2", kek2);
		request.setAttribute("keken3", kek3);
		request.setAttribute("keken4", kek4);
		request.setAttribute("keken5", kek5);
	}
}
}

