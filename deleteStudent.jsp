<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            background: #f8f9fa;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 20px;
            color: #dc3545;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Student</h2>
        <form action="<%= request.getContextPath() %>/deleteStudent" method="post">
            <div class="mb-3">
                <label class="form-label">Enter Register Number</label>
                <input type="number" name="regno" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-danger">Delete Student</button>
        </form>
    </div>
</body>
</html>
