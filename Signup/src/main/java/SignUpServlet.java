import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUsername = "travel";
		String jdbcPassword = "travel1234";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		
			
			   int phn = Integer.parseInt(request.getParameter("phn"));
	            String mname = request.getParameter("mname");
	            String memail = request.getParameter("memail");
	            String mbirth = request.getParameter("mbirth");
	            String mid = request.getParameter("mid");
	            String password = request.getParameter("password");
	            String gender = request.getParameter("gender");
	            
			
			
	            String sql = "INSERT INTO memberinfo (phn, MName, MEmail, MBirth, Mid,password,gender) VALUES (?,?,?,?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setInt(1, phn);
	            preparedStatement.setString(2, mname);
	            preparedStatement.setString(3, memail);
	            preparedStatement.setDate(4, java.sql.Date.valueOf(mbirth));
	            preparedStatement.setString(5, mid);
	            preparedStatement.setString(6, password);
	            preparedStatement.setString(7, gender);
	            
	            

	            preparedStatement.executeUpdate();
			
		
	            request.getSession().setAttribute("phn", phn);
	            request.getSession().setAttribute("mname", mname);
	            request.getSession().setAttribute("memail", memail);
	            request.getSession().setAttribute("mbirth", mbirth);
	            request.getSession().setAttribute("mid", mid);
	            request.getSession().setAttribute("password", password);
	            request.getSession().setAttribute("gender", gender);
		
		
			response.sendRedirect("SignSuccess.jsp");
			
		} catch (SQLIntegrityConstraintViolationException e) {
			response.sendRedirect("errorId.jsp");
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("SignFail.jsp");
			e.printStackTrace();
		}
	}

}