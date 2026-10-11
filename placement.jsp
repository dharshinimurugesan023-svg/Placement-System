<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College Placement Management System</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    width: 850px;
    background: white;
    border-radius: 18px;
    overflow: hidden;
    box-shadow: 0 15px 40px rgba(0,0,0,0.25);
    display: flex;
}

.left {
    width: 50%;
    padding: 50px;
    background: #f5f7ff;
}

.right {
    width: 50%;
    padding: 50px;
}

h1 {
    color: #333;
    margin-bottom: 10px;
}

h2 {
    color: #667eea;
}

p {
    color: #666;
    line-height: 1.6;
}

input, select {
    width: 100%;
    padding: 13px;
    margin: 9px 0;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 14px;
    margin-top: 12px;
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

.features {
    margin-top: 30px;
}

.feature {
    margin: 15px 0;
    font-size: 15px;
    color: #444;
}
</style>
</head>

<body>

<div class="container">

    <div class="left">
        <h1>College Placement</h1>
        <h2>Management System</h2>

        <p>
            A simple and efficient platform to manage
            student placement applications and selection.
        </p>

        <div class="features">
            <div class="feature">✓ Student Login</div>
            <div class="feature">✓ Placement Application</div>
            <div class="feature">✓ Company Selection</div>
            <div class="feature">✓ Eligibility Checking</div>
        </div>
    </div>

    <div class="right">

        <h2>Student Login</h2>

        <form action="LoginServlet" method="post">

            <input type="text"
                   name="username"
                   placeholder="Enter Username"
                   required>

            <input type="password"
                   name="password"
                   placeholder="Enter Password"
                   required>

            <button type="submit">Login</button>

        </form>

        <p style="font-size:13px; margin-top:20px;">
            Demo Login: <b>student</b> / <b>student123</b>
        </p>

    </div>

</div>

</body>
</html>