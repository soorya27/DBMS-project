<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.student.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Previous Students</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; text-align: center; }
        .container { max-width: 900px; margin: auto; background: #f8f9fa; padding: 20px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); }
        h2 { color: #dc3545; }
        table { width: 100%; margin-top: 20px; }
        th, td { padding: 10px; text-align: left; }
        .btn-back { margin-top: 20px; display: inline-block; padding: 10px 20px; background: #007bff; color: white; text-decoration: none; border-radius: 5px; }
        .btn-back:hover { background: #0056b3; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Previous Students (Deleted Records)</h2>
        <table class="table table-striped table-bordered">
            <thead class="table-danger">
                <tr>
                    <th>Reg No</th>
                    <th>Name</th>
                    <th>Enroll Type</th>
                    <th>CGPA</th>
                    <th>Deleted At</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try { 
                        Connection conn = DBConnection.getConnection();
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT * FROM student_log ORDER BY deleted_at DESC");

                        boolean hasRecords = false;
                        while (rs.next()) {
                            hasRecords = true;
                %>
                            <tr>
                                <td><%= rs.getInt("regno") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("enroll_type") %></td>
                                <td><%= rs.getDouble("cgpa") %></td>
                                <td><%= rs.getTimestamp("deleted_at") %></td>
                            </tr>
                <%
                        }
                        if (!hasRecords) {
                %>
                            <tr><td colspan="5" class="text-center text-muted">No deleted students found</td></tr>
                <%
                        }
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn-back">Go Back</a>
    </div>
</body>
</html>
