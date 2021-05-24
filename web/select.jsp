<%@ page import="entity.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="BasicDao.Impl.StudentBasicDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/13
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看学生信息</title>
    <script src="lib/jquery-3.6.0.js"></script>
    <script src="lib/jquery.cookie.js"></script>
    <link rel="stylesheet" type="text/css" href="lib/css.css">
    <style>
        body{
            background: url(./lib/背景.jpg);
            background-size: cover;
        }

        #box2{
          width: 100%;
            height: 700px;
            opacity: 0.9;
            display: flex;
            flex-direction: row;
            border-width: 2px;
            border-style: dashed;
            border-color: #f6f6f1;
        }
        table{
            opacity: 1;
            background-color: #5fbdbd;
            height: 100px;
            margin-left: 50px;
        }

        td{
            opacity: 0.9;
            background-color: #fff5ea;
            border-radius: 15px;
        }
        button{
            margin-left: 50px;
            border-radius: 25px;
            border-style: dashed;
            border-color: #fff5ea;
            border-width: 3px;

        }
        .sub{
            margin-left: 50px;
            border-radius: 25px;
            border-style: dashed;
            border-color: #fff5ea;
            border-width: 3px;
        }
        #span1{
            background-color: #fff5ea;
            border-style: dashed;
            border-color: cadetblue;
            opacity: 0.7;
            color: #ee2626;
            width: 150px;
            height: 50px;
            text-align: center;
            font-family: 华文隶书;
            font-size: 25px;
            border-radius: 45px;
            padding-top: 25px;




        }

        .inputIndex{
            border-radius: 25px;
            border-color: #5fbdbd;
            outline: none;
            width: 40px;
            height: 40px;
            font-size: 30px;
            font-weight: bold;
            font-family: 华文隶书;
            text-align: center;
        }
        .inputSpan{
            font-family: 华文隶书;
            font-size: 35px;
            color: #ffffff;
            margin-left: 75px;

        }
        .soloSpan{
            height: 200px;
            margin-left: 50px;
            background-color: #d0eeee;
            text-align: center;
            border-style: dashed;
            border-color: #fff5ea;
            border-radius: 15px;
            border-width: 3px;
            display: none;
        }

        p{
            font-size: 25px;
            font-family: 华文隶书;
            color: #de5835;
        }

        .SButton{

            margin-left: 40%;
        }


        #idinput{
            border-radius: 15px;
            border-color: #fff5ea;
            width:90%;
            height: 60px;
            outline: none;
            font-family: 华文行楷;
            font-size: 30px;
            margin-left: 20px;

        }
        .span1{
            position: relative;
            display: flex;
            flex-direction: column;
            width: 20%;
        }
        .paddingBox{
            width: 20%;
        }

        .img{
            width: 60px;
            height: 80px;
        }




    </style>
    <script>
        $(function () {
            //全选反选
            const tr = $('.tr');
            const check=$(".checkbox1");
            const first=$('.check1');
            const flag=$(".sub")
            console.log(check)
            first.click(function () {
               for(let i=0; i<tr.length; i++){

                   if(check.get(i).checked){
                        check.get(i).checked=false;

                   }else {
                       first.checked=false;
                       check.get(i).checked=true;
                   }

               }
            });
            //单个查询
            const span=$(".soloSpan");
            const button1=$("#button1");
            button1.click(function () {
                span.slideDown();


            })
            const button2=$(".SButton");
            button2.click(function () {
                $.cookie("id",$("#idinput").val());
            })
            //错误异常
            const newTr="<span id='span1'>请选择~</span>"
            const tooltip="<span id='span1'>请输入页数~</span>"
            <c:if test="${requestScope.ex!=null}">
                flag.before(newTr)
            </c:if>
            <c:if test="${requestScope.ecx!=null}">
            flag.before(tooltip)
            </c:if>
            setTimeout(function () {
                $("#span1").hide();
            },2000);
            $("#button").click(function () {
                $.cookie("index",$('.inputIndex').val());
            })
            flag.click(function () {
                if(confirm("确认删除?")){
                    //表单提交修改
                    $("#flag").attr("action","students")
                    $("#flag").submit();
                }

            })
            const buts=$('.deleteBut');
            for(let i=0;i<buts.length;i++){
                buts[i].click(function () {
                    $(".sub").click();
                })

            }
        })
    </script>
</head>
<body class="body">
<div class="box">
    <div class="box1"></div>
    <div id="box2">
        <div class="paddingBox"></div>
        <div style="width: 60%;height: 80%;display: flex;flex-direction: row">
        <span class="leftspan"><button style="margin-top: 0px"><a href="students?msg=pageDown&page=${requestScope.pg.nextPage}" class="a1">下一页</a></button>
                <span class="inputSpan">第<input class="inputIndex" type="text" value="${requestScope.pg.page}">页</span>
                <button style="margin-top: 0px"><a href="students?msg=pageUp&page=${requestScope.pg.prevPage}" class="a1">上一页</a></button>
            <button id="button"><a href="students?msg=jump" class="a1" style="color: #ee2626">跳转</a></button></span>
        <form   method="post" id="flag">
            <input type="hidden" name="msg" value="delete">
            <input type="hidden" name="page" value="${requestScope.pg.page}">
        <table cellpadding="5" class="tab">
            <tr><th colspan="5"><h4 style="margin-left: auto">学生信息</h4></th></tr>
            <tr>
                <td><input type="checkbox" class="check1"></td>
                <td>学生照片</td>
                <td>学生学号</td>
                <td>学生姓名</td>
                <td>学生年龄</td>
                <td>学生性别</td>
                <td>学生邮箱</td>
            </tr>

                <c:forEach var="stu" items="${sessionScope.list}">
            <tr class="tr"><td><input type="checkbox" name="check" value="${stu.sid}" class="checkbox1"></td>
                    <td><img class="img" src="http://localhost:8080/images/${stu.photo}"></td>
                    <td class="td">${stu.sid}</td>
                    <td>${stu.sname}</td>
                    <td>${stu.sage}</td>
                    <td>${stu.ssex}</td>
                    <td>${stu.semail}</td>
                    <td ><button style="width: 65px;height: 40px;margin: auto"><a class="a1" href="students?msg=update&sid=${stu.sid}">修改</a></button></td>
            </tr>
                </c:forEach>
        </table>
            <div class="paddingBox1"></div>
            <span class="span1">
                <input type="submit" class="sub" value="删除" style="color: #ee2626;" >
            <button TYPE="reset"><a href="welcome.jsp" class="a1">返回</a></button>
            <button id="button1" style="color: #fff5ea" TYPE="reset">单个查询</button>
            </span>

        </form>




        </div>
        <span class="soloSpan" style="width: 15%">
            <p>请输入学生ID</p>
            <input id="idinput" type="text">
            <button class="SButton"><a href="students?msg=getStuByName&page=${requestScope.pg.page}" class="a1">确认</a></button>
        </span>



    </div>
    <div class="box3">

    </div>
</div>
</body>
</html>
