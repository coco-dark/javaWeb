
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/12
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="lib/jquery-3.6.0.js"></script>
    <script src="lib/jquery.validate.js"></script>
    <script src="lib/messages_zh.js"></script>
    <link rel="stylesheet" type="text/css" href="lib/css.css">
    <style>
        body{
            background: url(./lib/背景.jpg);
            background-size: cover;
            width: 100%;
            height: 100%;
        }
        #span1{
            background-color: #fff5ea;
            border-style: dashed;
            border-color: cadetblue;
            opacity: 0.7;
            color: #ee2626;
            width: 150px;
            height: 100px;
            text-align: center;
            font-family: 华文隶书;
            font-size: 25px;
            border-radius: 45px;
            padding-top: 25px;




        }
        .box2{
            display: flex;
            flex-direction: column;
        }
        .paddingBox{
            width: 35%;
            height: 80%;
        }
        .fileChoose{
            width: 80px;
            height: 80px;
            border-radius: 45px;
            opacity: 0;
        }
        .imgBox{
            width: 80px;
            height: 80px;
            border-radius: 45px;
            border-style: outset;
            border-color: pink;
            margin: auto;
            opacity: unset;
            display: flex;
            flex-direction: row;
            background-size:cover;


        }
        #chooseBut{
            width: 60px;
            height: 30px;
            border-radius: 10px;
            font-size: 5px;
            color: #ee2626;


        }





    </style>
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
                    "pwd":{
                        required:true,
                        rangelength:[6,18]
                    }
                },
                messages:{
                    "name":{
                        required:"请输入姓名",
                        rangelength:"用户名长度0-6"
                    },
                    "age":{
                        required:"请输入年龄",
                        max: "最大年龄不能超过一百"
                    },
                    "sex":{
                        required:"请输入性别",
                        rangelength:"错误",
                    },
                    "pwd":{
                        required:"请填写密码",
                        rangelength:"密码长度在6-18"
                    }
                }
            });



            const msg="<span id='span1'>用户名已经存在~</span>"
            const flag=$("#re")
            <c:if test="${requestScope.ecp!=null}">
            flag.append(msg)</c:if>
            setTimeout(function () {
                $("#span1").hide();
            },2000);
            //设置图片点击
            $(".headImg").click(function () {
                $(".fileChoose").click();
            })
            //获取文件
           $(".fileChoose").change(function () {
                let file=$(this)[0].files[0];
                //文件读入流
                let reader=new FileReader();
                reader.readAsDataURL(file)
               //文件加载
                reader.onload=function () {
                    //设置属性
                    $(".headImg").attr("src",this.result).show();
                }

           })






        })
    </script>

</head>
<body>
    <div class="box">
        <div class="box1"></div>
     <div class="box2">

         <form action="regist" method="post" id="re" enctype="multipart/form-data">
             <div class="paddingBox"></div>
        <table>
            <tr><th>注册</th></tr>
            <input name="msg" type="hidden" value="rigist">
            <tr><th><div class="imgBox">
                <img class="headImg" style="border-radius: 45px" width="80px" height="80px">
                <input type="file"  name="photo" class="fileChoose" accept="image/aces">
            </div>
            <tr><td>用户名&nbsp:<input class="input" name="name" type="text" ></td></tr>
            <tr><td>密&nbsp&nbsp&nbsp码:<input type="password" name="pwd" class="input"></td></tr>
            <tr><td>年&nbsp&nbsp&nbsp龄:<input class="input" name="age" type="text"></td></tr>
            <tr><td>性&nbsp&nbsp&nbsp别:<input class="input" name="sex" type="text"></td></tr>
            <tr><td><input class="sub" type="submit" value="注册" ><button><a href="index.jsp" class="a1">登陆</a></button></td></tr>

        </table>


    </form>
     </div>
        <div class="box3"></div>
    </div>


</body>
</html>
