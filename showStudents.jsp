<%@ page import="java.sql.*" %>
<%@ page import="com.student.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; text-align: center; }
        .container { max-width: 900px; margin: auto; background: #f8f9fa; padding: 20px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); }
        h2 { color: #007bff; margin-bottom: 20px; }
        table { width: 100%; }
        th, td { padding: 10px; text-align: center; }
        .btn-back { margin-top: 20px; display: inline-block; padding: 10px 20px; background: #007bff; color: white; text-decoration: none; border-radius: 5px; }
        .btn-back:hover { background: #0056b3; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Students List</h2>
        <table class="table table-striped table-bordered">
            <thead class="table-primary">
                <tr>
                    <th>Registration Number</th>
                    <th>Name</th>
                    <th>Enrollment Type</th>
                    <th>CGPA</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Connection conn = DBConnection.getConnection();
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT * FROM students ORDER BY regno ASC");
                        
                        boolean hasRecords = false;
                        while (rs.next()) {
                            hasRecords = true;
                %>
                            <tr>
                                <td><%= rs.getInt("regno") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("enroll_type") %></td>
                                <td><%= rs.getDouble("cgpa") %></td>
                            </tr>
                <%
                        }
                        if (!hasRecords) {
                %>
                            <tr><td colspan="4" class="text-center text-muted">No students found</td></tr>
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
