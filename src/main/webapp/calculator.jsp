<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado Calculadora</title>
    </head>
    <body>
        <h1>Resultado:</h1>
        <%
            int operator1 = Integer.parseInt(request.getParameter("op1"));
            int operator2 = Integer.parseInt(request.getParameter("op2"));
            String operation = request.getParameter("operation");

            int result;
            switch (operation) {
                case "add":
                    result = operator1 + operator2;
                    break;
                case "minus":
                    result = operator1 - operator2;
                    break;
                case "multiply":
                    result = operator1 * operator2;
                    break;
                case "div":
                    result = operator1 / operator2;
                    break;
                default:
                    result = 0;
                    break;
            }

        %>
        <h2> <%=result%> <h2>
    </body>
</html>