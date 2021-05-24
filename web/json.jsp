<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/19
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="lib/jquery-3.6.0.js"></script>
    <script>
        $(function () {
            $('#but').click(function () {
                $.post("jsonServlet",null,function (object) {
                    for(let i=0;i<object.length;i++){
                        $("#span").append("<p>"+object[i].sid+object[i].sname+"</p>")
                    }
                },"json")
            })

        })
    </script>
</head>
<body>
    <span id="span"></span>
    <button id="but">click</button>
</body>
</html>
