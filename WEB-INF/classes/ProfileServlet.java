import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getSession().getAttribute("email").toString(); // Assuming email is stored in session
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourdatabase", "root", "password");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                request.setAttribute("fullName", rs.getString("name"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("dob", rs.getString("dob"));
                request.setAttribute("gender", rs.getString("gender"));
                request.setAttribute("phone", rs.getString("phone"));
                request.setAttribute("address", rs.getString("address"));
                request.setAttribute("studyLevel", rs.getString("studyLevel"));
            }
            
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}
