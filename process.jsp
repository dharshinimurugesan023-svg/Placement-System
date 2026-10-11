<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Placement Application</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f6fb;
}

.header {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    padding: 25px;
    text-align: center;
}

.card {
    width: 650px;
    margin: 35px auto;
    background: white;
    padding: 35px;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.12);
}

h2 {
    text-align: center;
    color: #333;
}

.row {
    display: flex;
    gap: 15px;
}

.field {
    width: 50%;
}

label {
    display: block;
    margin-top: 15px;
    font-weight: bold;
    color: #444;
}

input, select {
    width: 100%;
    padding: 12px;
    margin-top: 7px;
    border: 1px solid #ddd;
    border-radius: 7px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 14px;
    margin-top: 25px;
    border: none;
    border-radius: 8px;
    background: #667eea;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background: #5568d8;
}
</style>

</head>

<body>

<div class="header">
    <h1>College Placement Management System</h1>
    <p>Placement Application Portal</p>
</div>

<div class="card">

    <h2>Student Placement Application</h2>

    <form action="PlacementServlet" method="post">

        <div class="row">

            <div class="field">
                <label>Student Name</label>
                <input type="text"
                       name="name"
                       placeholder="Enter your name"
                       required>
            </div>

            <div class="field">
                <label>Email</label>
                <input type="email"
                       name="email"
                       placeholder="Enter email"
                       required>
            </div>

        </div>

        <div class="row">

            <div class="field">
                <label>Phone Number</label>
                <input type="text"
                       name="phone"
                       placeholder="Enter phone number"
                       required>
            </div>

            <div class="field">
                <label>Department</label>

                <select name="department" required>
                    <option value="">Select Department</option>
                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                    <option value="Computer Science">Computer Science</option>
                    <option value="Information Technology">Information Technology</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Electrical Engineering">Electrical Engineering</option>
                </select>
            </div>

        </div>

        <label>CGPA</label>
        <input type="number"
               name="cgpa"
               step="0.01"
               min="0"
               max="10"
               placeholder="Enter CGPA"
               required>

        <label>Company</label>

        <select name="company" required>
            <option value="">Select Company</option>
            <option value="TCS">TCS</option>
            <option value="Infosys">Infosys</option>
            <option value="Wipro">Wipro</option>
            <option value="Accenture">Accenture</option>
        </select>

        <label>Job Role</label>

        <select name="role" required>
            <option value="">Select Role</option>
            <option value="Software Engineer">Software Engineer</option>
            <option value="Testing Engineer">Testing Engineer</option>
            <option value="Java Developer">Java Developer</option>
            <option value="Graduate Engineer Trainee">Graduate Engineer Trainee</option>
        </select>

        <button type="submit">
            Submit Application
        </button>

    </form>

</div>

</body>
</html>