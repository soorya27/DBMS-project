<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students Desk</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            background: #f8f9fa;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            margin-bottom: 20px;
            color: #0a2a4d;
        }
        .btn {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Students Details Deck</h1>
        
        <a href="addStudent.jsp" class="btn btn-success">Add Student</a>
        <a href="showStudents.jsp" class="btn btn-primary">Show Students</a>
        <a href="updateStudent.jsp" class="btn btn-secondary">Update Student</a>
        <a href="deleteStudent.jsp" class="btn btn-danger">Delete Student</a>
        <a href="previousStudent.jsp" class="btn btn-secondary">Previous Students</a>
    </div>
</body>
</html>
