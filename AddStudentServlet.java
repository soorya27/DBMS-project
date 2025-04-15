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

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form values
        int regno = Integer.parseInt(request.getParameter("regno"));
        String name = request.getParameter("name");
        String enrollType = request.getParameter("enroll_type");
        double cgpa = Double.parseDouble(request.getParameter("cgpa"));  

        try {  
            Connection conn = DBConnection.getConnection();

            // Insert query
            String sql = "INSERT INTO students (regno, name, enroll_type, cgpa) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, regno);
            pstmt.setString(2, name);
            pstmt.setString(3, enrollType);
            pstmt.setDouble(4, cgpa);

            // Execute update
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2 style='color:green;text-align:center;'>Student added successfully!</h2>");
            } else {
                out.println("<h2 style='color:red;text-align:center;'>Error adding student.</h2>");
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
