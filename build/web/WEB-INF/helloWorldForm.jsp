<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World Form</title>
    </head>
    <body>
        <!-- This is an HTML Comment. It will not render in the browser, but will still be visible in the source code -->
        <%-- This is a JSP Comment. It will not be visible to the end user at all. --%>
        <h1>Hello World!</h1>
        <form method="POST" action="hello">
            <div>
                <label>First Name:</label>
                <input type="text" name="first_name" value="${person.firstname}">
            </div>
            <div>
                <label>Last Name:</label>
                <input type="text" name="last_name" value="${person.lastname}">
            </div>
            <div>
                <br>
                <input type="submit" value="Say Hello!">
            </div>
        </form>
        <c:if test="${error == true}">
            <p>Please enter both your first and last name.</p>
        </c:if>

    </body>
</html>
