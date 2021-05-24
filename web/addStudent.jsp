<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/13
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生信息</title>
    <link rel="stylesheet" type="text/css" href="lib/css.css">
    <style>
        body{
            background: url(./lib/背景.jpg);
            background-size: cover;
        }




        .sub:hover{
            border-width: 2px;
            border-color: whitesmoke;
            background-color: #ee2626;
        }
        .paddingBox{
            width: 35%;
            height: 80%;
        }
        .tooltip{
            margin: auto;
            width: 100px;
            height: 60px;
            background-color: #fff5ea;
            border-style: dashed;
            border-color: pink;
            border-width: 2px;
        }
        .imgBox{
            width: 80px;
            height: 80px;
            border-radius: 45px;
            margin: auto;

            border-style: outset;
            border-color: pink;
        }
        .img{
            width: 80px;
            height: 80px;
            border-radius: 45px;

        }
        .file{
            opacity: 0;
        }






    </style>
    <script src="lib/jquery-3.6.0.js"></script>
    <script src="lib/jquery.validate.js"></script>
    <script src="lib/messages_zh.js"></script>
    <script>
        $(function () {
            $('#re').validate({
                rules:{
                    "name":{
                        required:true,
                        rangelength:[0,6]
                    },
                    "age":{
                        required:true,
                        max:100
                    },
                    "sex":{
                        required:true,
                        rangelength:[0,1]
                    },
                    "email":{
                        required:true,
                        email:"email"
                    }
                },
                messages:{
                    "name":{
                        required:"请输入姓名",
                        rangelength:"姓名长度不符合"
                    },
                    "age":{
                        required:"请输入年龄",
                        max: "最大年龄不能超过一百"
                    },
                    "sex":{
                        required:"请输入性别",
                        rangelength:"错误",
                    },
                    "email":{
                        required:"请填写邮箱",
                        email:"请输入正确的邮箱"
                    }
                }
            });
            const img= $(".img");
            const files=$(".file");
            img.click(function () {
                files.click();
            });
            files.change(function () {
                let file=$(this)[0].files[0];
                const reader=new FileReader();
                reader.readAsDataURL(file);
                reader.onload=function () {
                    files.hide();
                    img.attr("src",this.result).show();
                }
            });



        })
    </script>
</head>
<body>
<div class="box">
        <div class="box1">
            <span>
                欢迎!<a>${sessionScope.user.name}</a>登录
            </span>
        </div>
        <div class="box2">
        <form id="re" action="students" method="post" enctype="multipart/form-data">
            <div class="paddingBox"></div>
            <input type="hidden" name="msg" value="addStudent">
            <c:if test="${requestScope.messages!=null}">
                <span class="tooltip">用户名密码错误!</span>
            </c:if>
            <table>
                <tr><th>学生信息注册</th></tr>
                <tr><th style="height: 80px"> <div class="imgBox">
                    <img class="img">
                    <input class="file" type="file" name="photo" >
                </div></th></tr>

                <tr><td>姓&nbsp&nbsp&nbsp名:<input class="input" name="name" type="text"></td></tr>
                <tr><td>年&nbsp&nbsp&nbsp龄:<input class="input" name="age" type="text"></td></tr>
                <tr><td>性&nbsp&nbsp&nbsp别:<input class="input" name="sex" type="text"></td></tr>
                <tr><td>邮&nbsp&nbsp&nbsp箱:<input type="text" name="email" class="input"></td></tr>
                <tr><td><input class="sub" type="submit" value="注册" ><button><a href="welcome.jsp" class="a1">返回</a></button></td>

                </tr>

            </table>


        </form>
    </div>
    <div class="box3"></div>
</div>


</body>
</html>
