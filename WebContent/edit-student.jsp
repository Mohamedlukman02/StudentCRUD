<%@ page import="com.student.model.Student" %>

<%
    Student student = (Student) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>

<body>

    <h1>Edit Student</h1>

    <form action="updateStudent" method="post">

        <!-- Hidden ID -->
        <input type="hidden"
               name="id"
               value="<%= student.getId() %>">

        <label>Name:</label>
        <input type="text"
               name="name"
               value="<%= student.getName() %>"
               required>

        <br><br>

        <label>Email:</label>
        <input type="email"
               name="email"
               value="<%= student.getEmail() %>"
               required>

        <br><br>

        <label>Course:</label>
        <input type="text"
               name="course"
               value="<%= student.getCourse() %>"
               required>

        <br><br>

        <label>Age:</label>
        <input type="number"
               name="age"
               value="<%= student.getAge() %>"
               required>

        <br><br>

        <button type="submit">Update Student</button>

    </form>

    <br>

    <a href="listStudents">Back to Student List</a>

</body>
</html>