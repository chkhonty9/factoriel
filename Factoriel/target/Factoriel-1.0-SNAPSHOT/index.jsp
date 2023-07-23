<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Factoriel</title>
    <style>
        h1, h2 {
            font-family: Arial, sans-serif;
            color: #333;
        }
        label {
            font-family: Arial, sans-serif;
            color: #777;
        }
        input[type=number], button[type=submit] {
            font-family: Arial, sans-serif;
            padding: 5px 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button[type=submit] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        button[type=submit]:hover {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
</h1>
<br/>
    <%!
        int fact(int n){

            if (n == 0) {
                return 1;
            } else {
                return n * fact(n-1);
            }
        }
    %>
    <h1>Factoriel :</h1>
    <%
        for(int i=0;i<10;i++)
        {
    %>
        <h2><%= i %>! = <%= fact(i) %> </h2>
    <%
        }
    %>
    <form action="" method="get">
        <label>Donner un entier :</label>
        <input type="number" name="number" >
        <button type="submit">Factoriel</button>
    </form>
    <%
        String number = request.getParameter("number");
        if(number != null){
            int nbr = Integer.parseInt(request.getParameter("number"));
    %>
    <h2> <%=nbr%>! = <%=fact(nbr)%> </h2>
    <% } %>
</body>
</html>