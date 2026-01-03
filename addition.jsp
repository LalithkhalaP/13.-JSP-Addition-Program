<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Addition Program</title>
</head>
<body>
    <h2>Addition Program (JSP)</h2>
     <form method="post" action="addition.jsp">
        Enter Number 1: <input type="text" name="num1"><br><br>
        Enter Number 2: <input type="text" name="num2"><br><br>
        <input type="submit" value="Add">
    </form>

    <%
        String n1 = request.getParameter("num1");
        String n2 = request.getParameter("num2");

        if (n1 != null && n2 != null && !n1.isEmpty() && !n2.isEmpty()) {
            try {
                int num1 = Integer.parseInt(n1);
                int num2 = Integer.parseInt(n2);
                int sum = num1 + num2;
                out.println("Sum = " + sum + "<br>");
            } catch (NumberFormatException e) {
                out.println("Please enter valid integers!");
            }
        }
    %>
</body>
</html>
