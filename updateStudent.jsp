<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center text-primary">Update Student</h2>
        <form action="updateStudent" method="post">
            <div class="mb-3">
                <label class="form-label">Registration Number</label>
                <input type="number" name="regno" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Enrollment Type</label>
                <input type="text" name="enroll_type" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">CGPA</label>
                <input type="text" name="cgpa" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success">Update Student</button>
        </form>
        <br>
        <a href="index.jsp" class="btn btn-secondary">Go Back</a>
    </div>
</body>
</html>
