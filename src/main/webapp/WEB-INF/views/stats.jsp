<html>
<body>
<h2>SIP Stats by Operating System</h2>
<table border="1">
    <tr><th>Operating System</th><th>Count</th></tr>
    <c:forEach var="row" items="${stats}">
        <tr>
            <td>${row[0]}</td>
            <td>${row[1]}</td>
        </tr>
    </c:forEach>
</table>
<a href="/">Back</a>
</body>
</html>
