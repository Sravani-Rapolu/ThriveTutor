<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration Process</title>
</head>
<body>
    <h2>Registration Process</h2>
    <%
        String url = "jdbc:mysql://localhost:3306/thrivetutor";
        String dbUsername = "root"; // Your MySQL username
        String dbPassword = ""; // Your MySQL password

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String studyLevel = request.getParameter("study_level");


        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish connection
            conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // Insert data into the Users table
            String sql = "INSERT INTO users (name, email, password, dob, gender, phone, address, studyLevel) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, dob);
            pstmt.setString(5, gender);
            pstmt.setString(6, phone);
            pstmt.setString(7, address);
            pstmt.setString(8, studyLevel);
            int row = pstmt.executeUpdate();

            if (row > 0) {
                out.println("Registration successful.<br>");
                out.println("<a href=\"login.html\">Login</a>");
            } else {
                out.println("Registration failed.<br>");
            }
        } catch (SQLIntegrityConstraintViolationException e) {
            out.println("Error: Username already exists.<br>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage() + "<br>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    %>
</body>
</html>
