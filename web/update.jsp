<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/15
  Time: 20:28
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

        .box2{
            display: flex;
            flex-direction: column;
        }



        .sub:hover{
            border-width: 2px;
            border-color: whitesmoke;
            background-color: #ee2626;
        }
        #tableShow{
            margin:auto;
            border-color: #ffc0cb;
            border-style: dashed;
            border-width: 5px;
            background-color: #aee3d3;
            color: #ff4343;
            opacity: 0.8;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            font-family: 楷体;
            width: 400px;
            height: 50px

        }
        td{
            border-color: white;
            border-width: 3px;
            border-style: dashed;
            background-color: #aee3d3;
        }
        .padSpan{
            width: 35%;
            height: 80%;
        }
        .imgBox{
            height: 100px;
            width: 80px;
            border-style: outset;
            border-width: 2px;
            border-color: pink;
            margin: auto;
        }
        .img{
            height: 100px;
            width: 80px;
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
    <div class="box1"></div>
    <div class="box2">


        <form id="re" action="students" method="post" enctype="multipart/form-data">
            <div class="padSpan"></div>
            <input type="hidden" name="msg" value="update">
            <input type="hidden" name="id" value="${requestScope.stu.sid}">
            <div style="display: flex;flex-direction: column;text-align: center;height: 50px;" >
                <c:if test="${requestScope.status!=null}">
                    <div id="tableShow">修改成功!!!</div>
                </c:if>

            <table >

                <tr><th style="height: 80px"> <div class="imgBox">
                    <img class="img" src="http://localhost:8080/images/${requestScope.stu.photo}">
                    <input type="file" class="file" name="photo" style="opacity: 0;">
                </div></th></tr>

                <tr><td>姓&nbsp&nbsp&nbsp名:<input class="input" name="name" type="text" value="${requestScope.stu.sname}"></td></tr>
                <tr><td>年&nbsp&nbsp&nbsp龄:<input class="input" name="age" type="text" value="${requestScope.stu.sage}"></td></tr>
                <tr><td>性&nbsp&nbsp&nbsp别:<input class="input" name="sex" type="text" value="${requestScope.stu.ssex}"></td></tr>
                <tr><td>邮&nbsp&nbsp&nbsp箱:<input type="text" name="email" class="input" value="${requestScope.stu.semail}"></td></tr>
                <tr><td><input class="sub" type="submit" value="确认" ><button type="reset"><a href="welcome.jsp" class="a1">返回</a></button></td>
                </tr>

            </table>
                <input type="hidden" name="oldPhoto" value="${requestScope.stu.photo}">

            </div>
        </form>
        </div>
    </div>

</div>


</body>
</html>
