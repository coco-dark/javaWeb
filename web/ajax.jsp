<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/19
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajax</title>
    <script src="lib/jquery-3.6.0.js"></script>
    <script>
        //js实现ajax
        //创建对象
        function likePer() {
            const xhr=new XMLHttpRequest();
            //正定内容 请求方式 路径 同步异步
            xhr.open("get","likeServlet",true);
            //发送
            xhr.send();
            //读取事件
            xhr.onreadystatechange=function () {

                //获取状态码
                const  state=xhr.readyState;
                if(state===4){
                    //读取内容
                    const msg=xhr.responseText;
                    document.getElementById("text").innerText="点击次数："+msg;
                }
            }
        }
        function likePost() {
            const xhr=new XMLHttpRequest();
            xhr.open("post","likeServlet",true);
            xhr.send("inText&"+document.getElementById("inText").valueOf().value);
            xhr.onreadystatechange=function () {
                const state=xhr.readyState;
                if(state===4){
                    const msg=xhr.responseText;
                    document.getElementById("text").innerText="点击次数："+msg;
                }
            }
        }

        //正定内容 请求方式 路径 ，
    </script>
    <script>
        //jq实现ajax
        $(function () {
            $("#jqBut").click(function () {
                //ajax请求
                confirm($('#inText').val())
                $.ajax({
                    url:"likeServlet",//请求地址
                    data:{"msg":$('#inText').val().toString()},//携带数据
                    type:"post",//请求方式
                    async:true,//同步异步
                    dataType:"text",//返回数据类型
                    success:function (object) {
                        //obj是服务器返回的对象
                        $('#text').text(object);

                    },
                    error:function () {
                        alert("出错了")
                    }
                })
            })
            $("#jqBut1").click(function () {
                //ajax请求
                confirm($('#inText1').val())
                $.ajax({
                    url:"likeServlet",//请求地址
                    data:{"msg1":$('#inText1').val().toString()},//携带数据
                    type:"post",//请求方式
                    async:true,//同步异步
                    dataType:"text",//返回数据类型
                    success:function (object) {
                        //obj是服务器返回的对象
                        $('#text').text(object);

                    },
                    error:function () {
                        alert("出错了")
                    }
                })
            })
        })
    </script>
</head>
<body>
    <FORM> <input type="text" id="inText" name="msg"></FORM>
    <form><input type="text" id="inText1" name="msg2"></form>
    <button id="jqBut">jq</button>
    <button id="jqBut1">jq1</button>
    <button onclick="likePer()">点击</button>
        <button onclick="likePost()">点击2</button>
    <p id="text"></p>
</body>
</html>
