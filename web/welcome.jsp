<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Student" %>
<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/12
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="lib/css.css">
    <style>
        body{
            background: url(./lib/背景.jpg);
            background-size: cover;
            width: 100%;
            height: 100%;
        }


        button{

            width: 300px;
            height: 100px;
            border-radius: 90px;

        }
        .box2{
            display: flex;
            flex-direction: row;

        }
        .padding{
            width: 35%;
            height: 80%;

        }
        .butDiv{
            display: flex;
            flex-direction: column;
        }

    </style>
</head>
<body>
    <div class="box">
        <div class="box1"></div>

            <div class="box2">
                <div class="padding"></div>
                <div class="butDiv"><button><a href="students?msg=checkStu" class="a1">添加学生信息</a></button>
                <button><a href="students?msg=select&page=${requestScope.pg.page}" class="a1">学生信息操作</a></button></div>

            </div>
        <div class="box3"></div>
    </div>

    </table>







</body>
</html>
