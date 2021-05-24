<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/19
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="lib/jquery-3.6.0.js"></script>
    <style>

        .title{
            width: 100%;
            height: 100px;


        }
        .middle{
            width: 100%;
            height: 700px;

        }
        .imgBox{
            height: 12.5rem;
            text-align: center;
            display: flex;
            flex-direction: column;



        }
        img{
            width: 16.875rem;
            height: 179px;
            margin: auto;
        }
        #search{
            width: 548px;
            height: 44px;
            border-top-left-radius: 15px;
            border-bottom-left-radius: 15px;
            border-color: silver;
            border-style: solid;
            outline: none;

        }
        #search:hover{
            border-color: cornflowerblue;
        }
        .searchBox{
            margin: auto;
            display: flex;
            flex-direction: row;
        }
        .searBut{
            width: 6.75rem;
            height: 44px;
            background-color: #55aaff;
            border-bottom-right-radius: 15px;
            border-top-right-radius: 0.9375rem;
            border: none;
            font-size: 1.25rem;
            color: aliceblue;
            outline: none;
        }
        .show{
            width:548px;
            height: 600px;
            text-align: left;
            border-left-style: solid;
            border-bottom-style: solid;
            border-right-style: solid;
            border-right-width: 1px;
            border-left-width: 1px;
            border-bottom-width: 1px;
            border-right-color: #938d8d;
            border-left-color: #939292;
            border-bottom-color: #908a8a;
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;



        }
        .msgBox{
            text-align: left;
            font-size: 20px;
            font-family: 楷体;
            color: #6c5e4c;
        }
    </style>
    <script>
        $(function () {
            const showBox=$('.show');
            showBox.hide();
            $("#search").bind("input propertychange",function () {
                showBox.slideDown();
                showBox.html("");
                const oldValue=$('#search').val();
                console.log(oldValue)
                if(oldValue!=null&&oldValue!=""){
                    $.get("baiduServlet",{"name":oldValue},function (obj) {
                        $.each(obj,function (index,value) {
                            $(".show").append("<div class='msgBox'>"+value.sname+"</div>")
                        })
                    },"json")
                }else {
                    showBox.html("");
                }
            })
            $("#search").mouseleave(function () {
                showBox.hide();
            })
        })

    </script>
</head>
<body>
<div class="box">
    <div class="title">
        <div class="imgBox"><img src="https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png">
            <div class="searchBox"><input type="text" id="search" name="name" /><button class="searBut">百度一下</button></div>

        </div>
        <div style="display: flex;flex-direction: row">
            <div style="width: 625px;height: 10px"></div>
            <div class="show"></div></div>

    </div>
    <div class="middle">

    </div>
</div>
</body>
</html>

