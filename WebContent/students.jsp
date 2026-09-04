<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.student.model.Student"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Student List</title>

<style>

body {
    font-family: Arial, sans-serif;
    margin: 30px;
}

h1 {
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}

th {
    background-color: #333;
    color: white;
}

a {
    text-decoration: none;
    padding: 6px 10px;
    color: white;
}

.edit {
    background-color: orange;
}

.delete {
    background-color: red;
}

.add {
    background-color: green;
}

</style>

</head>

<body>

<h1>Student List</h1>

<a class="add" href="add-student.html">Add Student</a>

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Course</th>
    <th>Age</th>
    <th>Action</th>
</tr>

<%
    List<Student> students =
        (List<Student>) request.getAttribute("students");

    if (students != null) {

        for (Student student : students) {
%>

<tr>

    <td>
        <%= student.getId() %>
    </td>

    <td>
        <%= student.getName() %>
    </td>

    <td>
        <%= student.getEmail() %>
    </td>

    <td>
        <%= student.getCourse() %>
    </td>

    <td>
        <%= student.getAge() %>
    </td>

    <td>

        <a class="edit"
           href="editStudent?id=<%= student.getId() %>">
            Edit
        </a>

        <a class="delete"
           href="deleteStudent?id=<%= student.getId() %>"
           onclick="return confirm('Delete this student?');">
            Delete
        </a>

    </td>

</tr>

<%
        }
    }
%>

</table>

</body>
</html>