<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<% 
    String url = "jdbc:mysql://localhost:3306/thrivetutor";
    String dbUsername = "root"; // Your DB username
    String dbPassword = ""; // Your DB password
    String driver = "com.mysql.cj.jdbc.Driver";

    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, dbUsername, dbPassword);
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);
        rs = ps.executeQuery();

        if (rs.next()) {
            // Use the implicit session object
            session.setAttribute("userEmail", email);
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("Invalid username or password");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("An error occurred while processing your request. Please try again later.");
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

