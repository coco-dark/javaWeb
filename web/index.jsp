<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/12
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登陆页面</title>
    <link rel="stylesheet" type="text/css" href="lib/css.css">
    <script src="lib/jquery-3.6.0.js"></script>
    <script src="lib/jquery.validate.js"></script>
    <script src="lib/messages_zh.js"></script>
    <style>
      body{
        background: url(./lib/背景.jpg);
        background-size: cover;
        width: 100%;
        height: 100%;
      }
      .paddingBox{
        width: 35%;
        height: 80%;

      }
      .imgBox{
        width: 80px;
        height: 80px;
        border-radius: 45px;
        border-style: outset;
        border-color: pink;
        margin: auto;
        opacity: unset;
        background-size:cover;
      }
      .imgBox{
        width: 80px;
        height: 80px;
        border-radius: 45px;
      }


    </style>
    <script>
      $(function () {
        $("#re").validate({
            rules:{
              "name":{
                required:true,
                rangelength:[0,6]
              },
              "no":{
                required:true,
                rangelength: [6,18]
              }
            },
            messages:{
              "name":{
                required:'请输入用户名',
                rangelength:"用户名长度不符合",
              },
              "no":{
                required:"请输入密码",
                rangelength:'密码长度不符合',
              }
            }
        })
      <c:if test="${cookie.get('img')!=null}">
        $('.imgBox').css({"background-image":"url(http://localhost:8080/images/${cookie.get("img").value})"})
        </c:if>
        const username=$("#username");
        const pwd=$("#pwd");
        $("#login").click(function () {
            $.post("regist",{"msg":"login","name":username.val(),"pwd":pwd.val()},function (obj) {
                    if(!obj){
                      $('#toolMsg').text("用户名密码错误！")
                    }else {
                      window.location.href="welcome.jsp";
                    }
            },"json")
        })
      })
    </script>
  </head>
  <body>

    <div class="box">
      <div class="box1">
      </div>
        <div class="box2">
          <form id="re" >
            <div class="paddingBox"></div>
            <table>
              <input name="msg" type="hidden" value="login">
              <tr><th style="font-size: 35px">登陆注册</th></tr>
              <tr><th><div class="imgBox"><div class="imgBox2" ></div></div></th></tr>
              <tr><td>用户名:<input class="input" id="username" name="name" type="text"></td></tr>
              <tr><td>密&nbsp&nbsp码:<input class="input" id="pwd" name="pwd" type="password"></td></tr>
              <tr><th id="toolMsg"></th></tr>
              <tr><td><input class="sub" id="login" type="button" value="登录" ><button type="reset"><a href="rigist.jsp" class="a1">注册</a></button></td></tr>
            </table>
          </form>
        </div>
        <div class="box3"></div>
      </div>

  </body>
</html>
