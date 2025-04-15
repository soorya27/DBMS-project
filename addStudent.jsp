<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-top: 50px;
        }
        .container {
            max-width: 500px;
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center text-primary">Add Student</h2>
        <form action="<%= request.getContextPath() %>/addStudent" method="post">
            <div class="mb-3">
                <label class="form-label">Register Number</label>
                <input type="number" name="regno" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Enrollment Type</label>
                <select name="enroll_type" class="form-control" required>
                    <option value="Regular">Regular</option>
                    <option value="Self Service">Self Service</option>
                    <option value="Lateral Entry">Lateral Entry</option>
                </select>
            </div>
            <div class="mb-3">
                <label class="form-label">CGPA</label>
                <input type="number" step="0.1" min="1" max="10" name="cgpa" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Add Student</button>
        </form>
        <br>
        <a href="index.jsp" class="btn btn-secondary w-100">Back to Home</a>
    </div>
</body>
</html>
