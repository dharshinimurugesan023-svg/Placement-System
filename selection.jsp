<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Placement Result</title>

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f4f6fb;
}

.header {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    text-align: center;
    padding: 25px;
}

.card {
    width: 650px;
    margin: 40px auto;
    background: white;
    padding: 35px;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.12);
}

.success {
    text-align: center;
    padding: 20px;
    border-radius: 10px;
    background: #e8f8ee;
    color: #198754;
    font-size: 22px;
    font-weight: bold;
}

.warning {
    text-align: center;
    padding: 20px;
    border-radius: 10px;
    background: #fff3cd;
    color: #856404;
    font-size: 22px;
    font-weight: bold;
}

.details {
    margin-top: 25px;
}

.detail {
    display: flex;
    justify-content: space-between;
    padding: 12px;
    border-bottom: 1px solid #eee;
}

.label {
    font-weight: bold;
    color: #555;
}

.value {
    color: #222;
}

button {
    width: 100%;
    padding: 13px;
    margin-top: 25px;
    border: none;
    border-radius: 8px;
    background: #667eea;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

</style>

</head>

<body>

<div class="header">

    <h1>College Placement Management System</h1>

    <p>Application Result</p>

</div>

<div class="card">

<%
    String status = (String) request.getAttribute("status");

    if ("SELECTED FOR PLACEMENT".equals(status)) {
%>

    <div class="success">
        🎉 Congratulations!<br>
        You are eligible for placement.
    </div>

<%
    } else {
%>

    <div class="warning">
        Application Status<br>
        Not Eligible
    </div>

<%
    }
%>

<div class="details">

    <div class="detail">
        <span class="label">Student Name</span>
        <span class="value">
            <%= request.getAttribute("name") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">Email</span>
        <span class="value">
            <%= request.getAttribute("email") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">Phone</span>
        <span class="value">
            <%= request.getAttribute("phone") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">Department</span>
        <span class="value">
            <%= request.getAttribute("department") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">CGPA</span>
        <span class="value">
            <%= request.getAttribute("cgpa") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">Company</span>
        <span class="value">
            <%= request.getAttribute("company") %>
        </span>
    </div>

    <div class="detail">
        <span class="label">Job Role</span>
        <span class="value">
            <%= request.getAttribute("role") %>
        </span>
    </div>

</div>

<button onclick="window.location='placement.jsp'">
    Back to Login
</button>

</div>

</body>
</html>