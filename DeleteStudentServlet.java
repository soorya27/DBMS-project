package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteStudent")
public class DeleteStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get student registration number from form
        int regno = Integer.parseInt(request.getParameter("regno"));

        try {  
            Connection conn = DBConnection.getConnection();

            // Delete query
            String sql = "DELETE FROM students WHERE regno = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, regno);

            // Execute delete
            int rowsDeleted = pstmt.executeUpdate();
            if (rowsDeleted > 0) {
                out.println("<h2 style='color:green;text-align:center;'>Student deleted successfully!</h2>");
            } else {
                out.println("<h2 style='color:red;text-align:center;'>Student not found.</h2>");
            }

            // Close resources
            pstmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2 style='color:red;text-align:center;'>Database connection error: " + e.getMessage() + "</h2>");
        }

        // Back button
        out.println("<html><body>");
        out.println("<style>");
        out.println(".btn-back { display: inline-block; margin: 20px auto 0 auto; padding: 10px 20px; background: #007bff; color: white; text-decoration: none; border-radius: 5px; text-align: center; }");
        out.println(".btn-container { text-align: center; }");
        out.println("</style>");
        out.println("<div class='btn-container'><a href='index.jsp' class='btn-back'>Go Back</a></div>");
        out.println("</body></html>");
    }
}
