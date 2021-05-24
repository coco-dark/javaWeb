<%--
  Created by IntelliJ IDEA.
  User: 小屁孩
  Date: 2021/5/15
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>生日快乐</title>
    <script src="jquery-3.6.0.js"></script>

    <!--
        3d盒子
    -->
    <style>
        body{
            background-image: url('/lib/背景.jpg');
            background-size:cover;
            background-repeat: no-repeat;
            width: 118.75rem;

        }
        .box{
            transform-style: preserve-3d;
            transform: rotateY(5deg) rotateX(-10deg);
            animation: move 15s infinite alternate;


        }
        .box div{
            display: bloack;

            border:chartreuse;
            border-style:solid;
            border-color: black;
            border-width: 1px;
            width: 200px;
            height: 200px;
            position: absolute;
            top: 200px;
            left: 300px;
            opacity: 0.7;
            text-align: center;
            animation:name 5s linear 2s infinite alternate;

        }
        .box .out_front{
            background-color: pink;
            transform: rotateY(0deg) translateX(-150px);
        }
        .box .out_back{
            background-color: purple;
            transform: rotateY(180deg) translateZ(-200px) translateX(150px) ;
        }
        .box .out_right{

            transform: rotateY(90deg) translateZ(-50px) translateX(-100px)
        }
        .box .out_left{

            transform: rotateY(-90deg) translateZ(250px) translateX(100px);
        }
        .box .out_top{

            transform: rotateX(90deg) translateX(-150px) translateZ(100px) translateY(100px);
        }
        .box .out_bottom{

            transform: rotateX(90deg) translateZ(-100px) translateX(-150px) translateY(100px);
        }
        @-webkit-keyframes move{
            to{
                transform:rotateY(360deg)
            }
        }



        .text {
            position: absolute;
            left: 50%;
            top: 50%;
            width: 80%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            text-align: center;
            font-size: 10vw;
            font-family: 'Concert One', cursive;
            -webkit-animation: text-animation 5s linear infinite alternate;
            animation: text-animation 5s linear infinite alternate;
        }

        @-webkit-keyframes text-animation {
            from {
                color: white;
                text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #FFDD1B, 0 0 70px #FFDD1B, 0 0 80px #FFDD1B, 0 0 100px #FFDD1B, 0 0 150px #FFDD1B;
            }
            to {
                color: white;
                text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 20px #ff0080, 0 0 30px #ff0080, 0 0 40px #ff0080, 0 0 55px #ff0080, 0 0 75px #ff0080;
                text-align: center;
            }
        }

        @keyframes text-animation {
            from {
                color: white;
                text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #FFDD1B, 0 0 70px #FFDD1B, 0 0 80px #FFDD1B, 0 0 100px #FFDD1B, 0 0 150px #FFDD1B;
            }
            to {
                color: white;
                text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 20px #ff0080, 0 0 30px #ff0080, 0 0 40px #ff0080, 0 0 55px #ff0080, 0 0 75px #ff0080;
                text-align: center;
            }
        }
        .bomb-rocket, .normal-rocket {
            position: absolute;
            bottom: 0;
            width: 30px;
            height: 30px;
            border-radius: 100%;
            -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite;
        }

        .bomb-rocket:nth-child(1) {
            left: 65vw;
            -webkit-animation-name: bomb-rocket-animate-2;
            animation-name: bomb-rocket-animate-2;
            -webkit-animation-delay: 0.9s;
            animation-delay: 0.9s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: red;
        }

        .normal-rocket:nth-child(16) {
            left: 89vw;
            -webkit-animation-name: normal-rocket-animate-2;
            animation-name: normal-rocket-animate-2;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: deepskyblue;
        }

        .bomb-rocket:nth-child(2) {
            left: 37vw;
            -webkit-animation-name: bomb-rocket-animate-3;
            animation-name: bomb-rocket-animate-3;
            -webkit-animation-delay: 0.5s;
            animation-delay: 0.5s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: turquoise;
        }

        .normal-rocket:nth-child(17) {
            left: 56vw;
            -webkit-animation-name: normal-rocket-animate-3;
            animation-name: normal-rocket-animate-3;
            -webkit-animation-delay: 0.6s;
            animation-delay: 0.6s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: yellow;
        }

        .bomb-rocket:nth-child(3) {
            left: 48vw;
            -webkit-animation-name: bomb-rocket-animate-1;
            animation-name: bomb-rocket-animate-1;
            -webkit-animation-delay: 0.9s;
            animation-delay: 0.9s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: turquoise;
        }

        .normal-rocket:nth-child(18) {
            left: 85vw;
            -webkit-animation-name: normal-rocket-animate-1;
            animation-name: normal-rocket-animate-1;
            -webkit-animation-delay: 1.6s;
            animation-delay: 1.6s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: deepskyblue;
        }

        .bomb-rocket:nth-child(4) {
            left: 73vw;
            -webkit-animation-name: bomb-rocket-animate-2;
            animation-name: bomb-rocket-animate-2;
            -webkit-animation-delay: 1.9s;
            animation-delay: 1.9s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: yellow;
        }

        .normal-rocket:nth-child(19) {
            left: 13vw;
            -webkit-animation-name: normal-rocket-animate-2;
            animation-name: normal-rocket-animate-2;
            -webkit-animation-delay: 0.9s;
            animation-delay: 0.9s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: springgreen;
        }

        .bomb-rocket:nth-child(5) {
            left: 81vw;
            -webkit-animation-name: bomb-rocket-animate-3;
            animation-name: bomb-rocket-animate-3;
            -webkit-animation-delay: 0.5s;
            animation-delay: 0.5s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: yellow;
        }

        .normal-rocket:nth-child(20) {
            left: 66vw;
            -webkit-animation-name: normal-rocket-animate-3;
            animation-name: normal-rocket-animate-3;
            -webkit-animation-delay: 1.9s;
            animation-delay: 1.9s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: yellow;
        }

        .bomb-rocket:nth-child(6) {
            left: 60vw;
            -webkit-animation-name: bomb-rocket-animate-1;
            animation-name: bomb-rocket-animate-1;
            -webkit-animation-delay: 0.9s;
            animation-delay: 0.9s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: turquoise;
        }

        .normal-rocket:nth-child(21) {
            left: 95vw;
            -webkit-animation-name: normal-rocket-animate-1;
            animation-name: normal-rocket-animate-1;
            -webkit-animation-delay: 1.4s;
            animation-delay: 1.4s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: hotpink;
        }

        .bomb-rocket:nth-child(7) {
            left: 99vw;
            -webkit-animation-name: bomb-rocket-animate-2;
            animation-name: bomb-rocket-animate-2;
            -webkit-animation-delay: 0.7s;
            animation-delay: 0.7s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: springgreen;
        }

        .normal-rocket:nth-child(22) {
            left: 86vw;
            -webkit-animation-name: normal-rocket-animate-2;
            animation-name: normal-rocket-animate-2;
            -webkit-animation-delay: 1.5s;
            animation-delay: 1.5s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: hotpink;
        }

        .bomb-rocket:nth-child(8) {
            left: 90vw;
            -webkit-animation-name: bomb-rocket-animate-3;
            animation-name: bomb-rocket-animate-3;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: deepskyblue;
        }

        .normal-rocket:nth-child(23) {
            left: 81vw;
            -webkit-animation-name: normal-rocket-animate-3;
            animation-name: normal-rocket-animate-3;
            -webkit-animation-delay: 0.9s;
            animation-delay: 0.9s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: hotpink;
        }

        .bomb-rocket:nth-child(9) {
            left: 95vw;
            -webkit-animation-name: bomb-rocket-animate-1;
            animation-name: bomb-rocket-animate-1;
            -webkit-animation-delay: 2s;
            animation-delay: 2s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: springgreen;
        }

        .normal-rocket:nth-child(24) {
            left: 48vw;
            -webkit-animation-name: normal-rocket-animate-1;
            animation-name: normal-rocket-animate-1;
            -webkit-animation-delay: 0.6s;
            animation-delay: 0.6s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: red;
        }

        .bomb-rocket:nth-child(10) {
            left: 85vw;
            -webkit-animation-name: bomb-rocket-animate-2;
            animation-name: bomb-rocket-animate-2;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: turquoise;
        }

        .normal-rocket:nth-child(25) {
            left: 4vw;
            -webkit-animation-name: normal-rocket-animate-2;
            animation-name: normal-rocket-animate-2;
            -webkit-animation-delay: 1.1s;
            animation-delay: 1.1s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: springgreen;
        }

        .bomb-rocket:nth-child(11) {
            left: 70vw;
            -webkit-animation-name: bomb-rocket-animate-3;
            animation-name: bomb-rocket-animate-3;
            -webkit-animation-delay: 1.9s;
            animation-delay: 1.9s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: yellow;
        }

        .normal-rocket:nth-child(26) {
            left: 3vw;
            -webkit-animation-name: normal-rocket-animate-3;
            animation-name: normal-rocket-animate-3;
            -webkit-animation-delay: 0.8s;
            animation-delay: 0.8s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: springgreen;
        }

        .bomb-rocket:nth-child(12) {
            left: 20vw;
            -webkit-animation-name: bomb-rocket-animate-1;
            animation-name: bomb-rocket-animate-1;
            -webkit-animation-delay: 2s;
            animation-delay: 2s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: turquoise;
        }

        .normal-rocket:nth-child(27) {
            left: 3vw;
            -webkit-animation-name: normal-rocket-animate-1;
            animation-name: normal-rocket-animate-1;
            -webkit-animation-delay: 0.5s;
            animation-delay: 0.5s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: red;
        }

        .bomb-rocket:nth-child(13) {
            left: 88vw;
            -webkit-animation-name: bomb-rocket-animate-2;
            animation-name: bomb-rocket-animate-2;
            -webkit-animation-delay: 1.3s;
            animation-delay: 1.3s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: deepskyblue;
        }

        .normal-rocket:nth-child(28) {
            left: 1vw;
            -webkit-animation-name: normal-rocket-animate-2;
            animation-name: normal-rocket-animate-2;
            -webkit-animation-delay: 0.7s;
            animation-delay: 0.7s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: deepskyblue;
        }

        .bomb-rocket:nth-child(14) {
            left: 74vw;
            -webkit-animation-name: bomb-rocket-animate-3;
            animation-name: bomb-rocket-animate-3;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: turquoise;
        }

        .normal-rocket:nth-child(29) {
            left: 46vw;
            -webkit-animation-name: normal-rocket-animate-3;
            animation-name: normal-rocket-animate-3;
            -webkit-animation-delay: 0.4s;
            animation-delay: 0.4s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: yellow;
        }

        .bomb-rocket:nth-child(15) {
            left: 59vw;
            -webkit-animation-name: bomb-rocket-animate-1;
            animation-name: bomb-rocket-animate-1;
            -webkit-animation-delay: 2s;
            animation-delay: 2s;
            -webkit-animation-duration: 4s;
            animation-duration: 4s;
            color: deepskyblue;
        }

        .normal-rocket:nth-child(30) {
            left: 57vw;
            -webkit-animation-name: normal-rocket-animate-1;
            animation-name: normal-rocket-animate-1;
            -webkit-animation-delay: 1.1s;
            animation-delay: 1.1s;
            -webkit-animation-duration: 5s;
            animation-duration: 5s;
            color: red;
        }

        @-webkit-keyframes bomb-rocket-animate-1 {
            0% {
                -webkit-transform: rotate(-10deg) translateY(0) scale(0);
                transform: rotate(-10deg) translateY(0) scale(0);
                opacity: 1;
                box-shadow: none;
            }
            0.1% {
                -webkit-transform: rotate(-10deg) translateY(0) scale(0.1, 0.5);
                transform: rotate(-10deg) translateY(0) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1, 0.5);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50.1% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor;
                opacity: 1;
            }
            75% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 500px 0px 5px #fff, 500px 0px 10px #fff, 500px 0px 20px currentColor, 500px 0px 30px currentColor, 500px 0px 40px currentColor, 500px 0px 55px currentColor, 500px 0px 75px currentColor, 344.68271px 60.77686px 5px #fff, 344.68271px 60.77686px 10px #fff, 344.68271px 60.77686px 20px currentColor, 344.68271px 60.77686px 30px currentColor, 344.68271px 60.77686px 40px currentColor, 344.68271px 60.77686px 55px currentColor, 344.68271px 60.77686px 75px currentColor, 187.93852px 68.40403px 5px #fff, 187.93852px 68.40403px 10px #fff, 187.93852px 68.40403px 20px currentColor, 187.93852px 68.40403px 30px currentColor, 187.93852px 68.40403px 40px currentColor, 187.93852px 68.40403px 55px currentColor, 187.93852px 68.40403px 75px currentColor, 433.0127px 250px 5px #fff, 433.0127px 250px 10px #fff, 433.0127px 250px 20px currentColor, 433.0127px 250px 30px currentColor, 433.0127px 250px 40px currentColor, 433.0127px 250px 55px currentColor, 433.0127px 250px 75px currentColor, 268.11556px 224.97566px 5px #fff, 268.11556px 224.97566px 10px #fff, 268.11556px 224.97566px 20px currentColor, 268.11556px 224.97566px 30px currentColor, 268.11556px 224.97566px 40px currentColor, 268.11556px 224.97566px 55px currentColor, 268.11556px 224.97566px 75px currentColor, 128.55752px 153.20889px 5px #fff, 128.55752px 153.20889px 10px #fff, 128.55752px 153.20889px 20px currentColor, 128.55752px 153.20889px 30px currentColor, 128.55752px 153.20889px 40px currentColor, 128.55752px 153.20889px 55px currentColor, 128.55752px 153.20889px 75px currentColor, 250px 433.0127px 5px #fff, 250px 433.0127px 10px #fff, 250px 433.0127px 20px currentColor, 250px 433.0127px 30px currentColor, 250px 433.0127px 40px currentColor, 250px 433.0127px 55px currentColor, 250px 433.0127px 75px currentColor, 119.70705px 328.89242px 5px #fff, 119.70705px 328.89242px 10px #fff, 119.70705px 328.89242px 20px currentColor, 119.70705px 328.89242px 30px currentColor, 119.70705px 328.89242px 40px currentColor, 119.70705px 328.89242px 55px currentColor, 119.70705px 328.89242px 75px currentColor, 34.72964px 196.96155px 5px #fff, 34.72964px 196.96155px 10px #fff, 34.72964px 196.96155px 20px currentColor, 34.72964px 196.96155px 30px currentColor, 34.72964px 196.96155px 40px currentColor, 34.72964px 196.96155px 55px currentColor, 34.72964px 196.96155px 75px currentColor, 0px 500px 5px #fff, 0px 500px 10px #fff, 0px 500px 20px currentColor, 0px 500px 30px currentColor, 0px 500px 40px currentColor, 0px 500px 55px currentColor, 0px 500px 75px currentColor, -60.77686px 344.68271px 5px #fff, -60.77686px 344.68271px 10px #fff, -60.77686px 344.68271px 20px currentColor, -60.77686px 344.68271px 30px currentColor, -60.77686px 344.68271px 40px currentColor, -60.77686px 344.68271px 55px currentColor, -60.77686px 344.68271px 75px currentColor, -68.40403px 187.93852px 5px #fff, -68.40403px 187.93852px 10px #fff, -68.40403px 187.93852px 20px currentColor, -68.40403px 187.93852px 30px currentColor, -68.40403px 187.93852px 40px currentColor, -68.40403px 187.93852px 55px currentColor, -68.40403px 187.93852px 75px currentColor, -250px 433.0127px 5px #fff, -250px 433.0127px 10px #fff, -250px 433.0127px 20px currentColor, -250px 433.0127px 30px currentColor, -250px 433.0127px 40px currentColor, -250px 433.0127px 55px currentColor, -250px 433.0127px 75px currentColor, -224.97566px 268.11556px 5px #fff, -224.97566px 268.11556px 10px #fff, -224.97566px 268.11556px 20px currentColor, -224.97566px 268.11556px 30px currentColor, -224.97566px 268.11556px 40px currentColor, -224.97566px 268.11556px 55px currentColor, -224.97566px 268.11556px 75px currentColor, -153.20889px 128.55752px 5px #fff, -153.20889px 128.55752px 10px #fff, -153.20889px 128.55752px 20px currentColor, -153.20889px 128.55752px 30px currentColor, -153.20889px 128.55752px 40px currentColor, -153.20889px 128.55752px 55px currentColor, -153.20889px 128.55752px 75px currentColor, -433.0127px 250px 5px #fff, -433.0127px 250px 10px #fff, -433.0127px 250px 20px currentColor, -433.0127px 250px 30px currentColor, -433.0127px 250px 40px currentColor, -433.0127px 250px 55px currentColor, -433.0127px 250px 75px currentColor, -328.89242px 119.70705px 5px #fff, -328.89242px 119.70705px 10px #fff, -328.89242px 119.70705px 20px currentColor, -328.89242px 119.70705px 30px currentColor, -328.89242px 119.70705px 40px currentColor, -328.89242px 119.70705px 55px currentColor, -328.89242px 119.70705px 75px currentColor, -196.96155px 34.72964px 5px #fff, -196.96155px 34.72964px 10px #fff, -196.96155px 34.72964px 20px currentColor, -196.96155px 34.72964px 30px currentColor, -196.96155px 34.72964px 40px currentColor, -196.96155px 34.72964px 55px currentColor, -196.96155px 34.72964px 75px currentColor, -500px 0px 5px #fff, -500px 0px 10px #fff, -500px 0px 20px currentColor, -500px 0px 30px currentColor, -500px 0px 40px currentColor, -500px 0px 55px currentColor, -500px 0px 75px currentColor, -344.68271px -60.77686px 5px #fff, -344.68271px -60.77686px 10px #fff, -344.68271px -60.77686px 20px currentColor, -344.68271px -60.77686px 30px currentColor, -344.68271px -60.77686px 40px currentColor, -344.68271px -60.77686px 55px currentColor, -344.68271px -60.77686px 75px currentColor, -187.93852px -68.40403px 5px #fff, -187.93852px -68.40403px 10px #fff, -187.93852px -68.40403px 20px currentColor, -187.93852px -68.40403px 30px currentColor, -187.93852px -68.40403px 40px currentColor, -187.93852px -68.40403px 55px currentColor, -187.93852px -68.40403px 75px currentColor, -433.0127px -250px 5px #fff, -433.0127px -250px 10px #fff, -433.0127px -250px 20px currentColor, -433.0127px -250px 30px currentColor, -433.0127px -250px 40px currentColor, -433.0127px -250px 55px currentColor, -433.0127px -250px 75px currentColor, -268.11555px -224.97566px 5px #fff, -268.11555px -224.97566px 10px #fff, -268.11555px -224.97566px 20px currentColor, -268.11555px -224.97566px 30px currentColor, -268.11555px -224.97566px 40px currentColor, -268.11555px -224.97566px 55px currentColor, -268.11555px -224.97566px 75px currentColor, -128.55752px -153.20889px 5px #fff, -128.55752px -153.20889px 10px #fff, -128.55752px -153.20889px 20px currentColor, -128.55752px -153.20889px 30px currentColor, -128.55752px -153.20889px 40px currentColor, -128.55752px -153.20889px 55px currentColor, -128.55752px -153.20889px 75px currentColor, -249.99998px -433.0127px 5px #fff, -249.99998px -433.0127px 10px #fff, -249.99998px -433.0127px 20px currentColor, -249.99998px -433.0127px 30px currentColor, -249.99998px -433.0127px 40px currentColor, -249.99998px -433.0127px 55px currentColor, -249.99998px -433.0127px 75px currentColor, -119.70701px -328.89241px 5px #fff, -119.70701px -328.89241px 10px #fff, -119.70701px -328.89241px 20px currentColor, -119.70701px -328.89241px 30px currentColor, -119.70701px -328.89241px 40px currentColor, -119.70701px -328.89241px 55px currentColor, -119.70701px -328.89241px 75px currentColor, -34.72959px -196.96154px 5px #fff, -34.72959px -196.96154px 10px #fff, -34.72959px -196.96154px 20px currentColor, -34.72959px -196.96154px 30px currentColor, -34.72959px -196.96154px 40px currentColor, -34.72959px -196.96154px 55px currentColor, -34.72959px -196.96154px 75px currentColor, 0.00028px -499.99994px 5px #fff, 0.00028px -499.99994px 10px #fff, 0.00028px -499.99994px 20px currentColor, 0.00028px -499.99994px 30px currentColor, 0.00028px -499.99994px 40px currentColor, 0.00028px -499.99994px 55px currentColor, 0.00028px -499.99994px 75px currentColor, 60.77729px -344.68262px 5px #fff, 60.77729px -344.68262px 10px #fff, 60.77729px -344.68262px 20px currentColor, 60.77729px -344.68262px 30px currentColor, 60.77729px -344.68262px 40px currentColor, 60.77729px -344.68262px 55px currentColor, 60.77729px -344.68262px 75px currentColor, 68.40456px -187.93841px 5px #fff, 68.40456px -187.93841px 10px #fff, 68.40456px -187.93841px 20px currentColor, 68.40456px -187.93841px 30px currentColor, 68.40456px -187.93841px 40px currentColor, 68.40456px -187.93841px 55px currentColor, 68.40456px -187.93841px 75px currentColor, 250.00279px -433.01207px 5px #fff, 250.00279px -433.01207px 10px #fff, 250.00279px -433.01207px 20px currentColor, 250.00279px -433.01207px 30px currentColor, 250.00279px -433.01207px 40px currentColor, 250.00279px -433.01207px 55px currentColor, 250.00279px -433.01207px 75px currentColor, 224.97966px -268.11461px 5px #fff, 224.97966px -268.11461px 10px #fff, 224.97966px -268.11461px 20px currentColor, 224.97966px -268.11461px 30px currentColor, 224.97966px -268.11461px 40px currentColor, 224.97966px -268.11461px 55px currentColor, 224.97966px -268.11461px 75px currentColor, 153.21347px -128.55641px 5px #fff, 153.21347px -128.55641px 10px #fff, 153.21347px -128.55641px 20px currentColor, 153.21347px -128.55641px 30px currentColor, 153.21347px -128.55641px 40px currentColor, 153.21347px -128.55641px 55px currentColor, 153.21347px -128.55641px 75px currentColor, 433.03515px -249.99435px 5px #fff, 433.03515px -249.99435px 10px #fff, 433.03515px -249.99435px 20px currentColor, 433.03515px -249.99435px 30px currentColor, 433.03515px -249.99435px 40px currentColor, 433.03515px -249.99435px 55px currentColor, 433.03515px -249.99435px 75px currentColor, 328.92262px -119.69922px 5px #fff, 328.92262px -119.69922px 10px #fff, 328.92262px -119.69922px 20px currentColor, 328.92262px -119.69922px 30px currentColor, 328.92262px -119.69922px 40px currentColor, 328.92262px -119.69922px 55px currentColor, 328.92262px -119.69922px 75px currentColor, 196.99409px -34.72095px 5px #fff, 196.99409px -34.72095px 10px #fff, 196.99409px -34.72095px 20px currentColor, 196.99409px -34.72095px 30px currentColor, 196.99409px -34.72095px 40px currentColor, 196.99409px -34.72095px 55px currentColor, 196.99409px -34.72095px 75px currentColor;
                opacity: 1;
            }
            100% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 500px 0px 5px #fff, 500px 0px 10px #fff, 500px 0px 20px currentColor, 500px 0px 30px currentColor, 500px 0px 40px currentColor, 500px 0px 55px currentColor, 500px 0px 75px currentColor, 344.68271px 60.77686px 5px #fff, 344.68271px 60.77686px 10px #fff, 344.68271px 60.77686px 20px currentColor, 344.68271px 60.77686px 30px currentColor, 344.68271px 60.77686px 40px currentColor, 344.68271px 60.77686px 55px currentColor, 344.68271px 60.77686px 75px currentColor, 187.93852px 68.40403px 5px #fff, 187.93852px 68.40403px 10px #fff, 187.93852px 68.40403px 20px currentColor, 187.93852px 68.40403px 30px currentColor, 187.93852px 68.40403px 40px currentColor, 187.93852px 68.40403px 55px currentColor, 187.93852px 68.40403px 75px currentColor, 433.0127px 250px 5px #fff, 433.0127px 250px 10px #fff, 433.0127px 250px 20px currentColor, 433.0127px 250px 30px currentColor, 433.0127px 250px 40px currentColor, 433.0127px 250px 55px currentColor, 433.0127px 250px 75px currentColor, 268.11556px 224.97566px 5px #fff, 268.11556px 224.97566px 10px #fff, 268.11556px 224.97566px 20px currentColor, 268.11556px 224.97566px 30px currentColor, 268.11556px 224.97566px 40px currentColor, 268.11556px 224.97566px 55px currentColor, 268.11556px 224.97566px 75px currentColor, 128.55752px 153.20889px 5px #fff, 128.55752px 153.20889px 10px #fff, 128.55752px 153.20889px 20px currentColor, 128.55752px 153.20889px 30px currentColor, 128.55752px 153.20889px 40px currentColor, 128.55752px 153.20889px 55px currentColor, 128.55752px 153.20889px 75px currentColor, 250px 433.0127px 5px #fff, 250px 433.0127px 10px #fff, 250px 433.0127px 20px currentColor, 250px 433.0127px 30px currentColor, 250px 433.0127px 40px currentColor, 250px 433.0127px 55px currentColor, 250px 433.0127px 75px currentColor, 119.70705px 328.89242px 5px #fff, 119.70705px 328.89242px 10px #fff, 119.70705px 328.89242px 20px currentColor, 119.70705px 328.89242px 30px currentColor, 119.70705px 328.89242px 40px currentColor, 119.70705px 328.89242px 55px currentColor, 119.70705px 328.89242px 75px currentColor, 34.72964px 196.96155px 5px #fff, 34.72964px 196.96155px 10px #fff, 34.72964px 196.96155px 20px currentColor, 34.72964px 196.96155px 30px currentColor, 34.72964px 196.96155px 40px currentColor, 34.72964px 196.96155px 55px currentColor, 34.72964px 196.96155px 75px currentColor, 0px 500px 5px #fff, 0px 500px 10px #fff, 0px 500px 20px currentColor, 0px 500px 30px currentColor, 0px 500px 40px currentColor, 0px 500px 55px currentColor, 0px 500px 75px currentColor, -60.77686px 344.68271px 5px #fff, -60.77686px 344.68271px 10px #fff, -60.77686px 344.68271px 20px currentColor, -60.77686px 344.68271px 30px currentColor, -60.77686px 344.68271px 40px currentColor, -60.77686px 344.68271px 55px currentColor, -60.77686px 344.68271px 75px currentColor, -68.40403px 187.93852px 5px #fff, -68.40403px 187.93852px 10px #fff, -68.40403px 187.93852px 20px currentColor, -68.40403px 187.93852px 30px currentColor, -68.40403px 187.93852px 40px currentColor, -68.40403px 187.93852px 55px currentColor, -68.40403px 187.93852px 75px currentColor, -250px 433.0127px 5px #fff, -250px 433.0127px 10px #fff, -250px 433.0127px 20px currentColor, -250px 433.0127px 30px currentColor, -250px 433.0127px 40px currentColor, -250px 433.0127px 55px currentColor, -250px 433.0127px 75px currentColor, -224.97566px 268.11556px 5px #fff, -224.97566px 268.11556px 10px #fff, -224.97566px 268.11556px 20px currentColor, -224.97566px 268.11556px 30px currentColor, -224.97566px 268.11556px 40px currentColor, -224.97566px 268.11556px 55px currentColor, -224.97566px 268.11556px 75px currentColor, -153.20889px 128.55752px 5px #fff, -153.20889px 128.55752px 10px #fff, -153.20889px 128.55752px 20px currentColor, -153.20889px 128.55752px 30px currentColor, -153.20889px 128.55752px 40px currentColor, -153.20889px 128.55752px 55px currentColor, -153.20889px 128.55752px 75px currentColor, -433.0127px 250px 5px #fff, -433.0127px 250px 10px #fff, -433.0127px 250px 20px currentColor, -433.0127px 250px 30px currentColor, -433.0127px 250px 40px currentColor, -433.0127px 250px 55px currentColor, -433.0127px 250px 75px currentColor, -328.89242px 119.70705px 5px #fff, -328.89242px 119.70705px 10px #fff, -328.89242px 119.70705px 20px currentColor, -328.89242px 119.70705px 30px currentColor, -328.89242px 119.70705px 40px currentColor, -328.89242px 119.70705px 55px currentColor, -328.89242px 119.70705px 75px currentColor, -196.96155px 34.72964px 5px #fff, -196.96155px 34.72964px 10px #fff, -196.96155px 34.72964px 20px currentColor, -196.96155px 34.72964px 30px currentColor, -196.96155px 34.72964px 40px currentColor, -196.96155px 34.72964px 55px currentColor, -196.96155px 34.72964px 75px currentColor, -500px 0px 5px #fff, -500px 0px 10px #fff, -500px 0px 20px currentColor, -500px 0px 30px currentColor, -500px 0px 40px currentColor, -500px 0px 55px currentColor, -500px 0px 75px currentColor, -344.68271px -60.77686px 5px #fff, -344.68271px -60.77686px 10px #fff, -344.68271px -60.77686px 20px currentColor, -344.68271px -60.77686px 30px currentColor, -344.68271px -60.77686px 40px currentColor, -344.68271px -60.77686px 55px currentColor, -344.68271px -60.77686px 75px currentColor, -187.93852px -68.40403px 5px #fff, -187.93852px -68.40403px 10px #fff, -187.93852px -68.40403px 20px currentColor, -187.93852px -68.40403px 30px currentColor, -187.93852px -68.40403px 40px currentColor, -187.93852px -68.40403px 55px currentColor, -187.93852px -68.40403px 75px currentColor, -433.0127px -250px 5px #fff, -433.0127px -250px 10px #fff, -433.0127px -250px 20px currentColor, -433.0127px -250px 30px currentColor, -433.0127px -250px 40px currentColor, -433.0127px -250px 55px currentColor, -433.0127px -250px 75px currentColor, -268.11555px -224.97566px 5px #fff, -268.11555px -224.97566px 10px #fff, -268.11555px -224.97566px 20px currentColor, -268.11555px -224.97566px 30px currentColor, -268.11555px -224.97566px 40px currentColor, -268.11555px -224.97566px 55px currentColor, -268.11555px -224.97566px 75px currentColor, -128.55752px -153.20889px 5px #fff, -128.55752px -153.20889px 10px #fff, -128.55752px -153.20889px 20px currentColor, -128.55752px -153.20889px 30px currentColor, -128.55752px -153.20889px 40px currentColor, -128.55752px -153.20889px 55px currentColor, -128.55752px -153.20889px 75px currentColor, -249.99998px -433.0127px 5px #fff, -249.99998px -433.0127px 10px #fff, -249.99998px -433.0127px 20px currentColor, -249.99998px -433.0127px 30px currentColor, -249.99998px -433.0127px 40px currentColor, -249.99998px -433.0127px 55px currentColor, -249.99998px -433.0127px 75px currentColor, -119.70701px -328.89241px 5px #fff, -119.70701px -328.89241px 10px #fff, -119.70701px -328.89241px 20px currentColor, -119.70701px -328.89241px 30px currentColor, -119.70701px -328.89241px 40px currentColor, -119.70701px -328.89241px 55px currentColor, -119.70701px -328.89241px 75px currentColor, -34.72959px -196.96154px 5px #fff, -34.72959px -196.96154px 10px #fff, -34.72959px -196.96154px 20px currentColor, -34.72959px -196.96154px 30px currentColor, -34.72959px -196.96154px 40px currentColor, -34.72959px -196.96154px 55px currentColor, -34.72959px -196.96154px 75px currentColor, 0.00028px -499.99994px 5px #fff, 0.00028px -499.99994px 10px #fff, 0.00028px -499.99994px 20px currentColor, 0.00028px -499.99994px 30px currentColor, 0.00028px -499.99994px 40px currentColor, 0.00028px -499.99994px 55px currentColor, 0.00028px -499.99994px 75px currentColor, 60.77729px -344.68262px 5px #fff, 60.77729px -344.68262px 10px #fff, 60.77729px -344.68262px 20px currentColor, 60.77729px -344.68262px 30px currentColor, 60.77729px -344.68262px 40px currentColor, 60.77729px -344.68262px 55px currentColor, 60.77729px -344.68262px 75px currentColor, 68.40456px -187.93841px 5px #fff, 68.40456px -187.93841px 10px #fff, 68.40456px -187.93841px 20px currentColor, 68.40456px -187.93841px 30px currentColor, 68.40456px -187.93841px 40px currentColor, 68.40456px -187.93841px 55px currentColor, 68.40456px -187.93841px 75px currentColor, 250.00279px -433.01207px 5px #fff, 250.00279px -433.01207px 10px #fff, 250.00279px -433.01207px 20px currentColor, 250.00279px -433.01207px 30px currentColor, 250.00279px -433.01207px 40px currentColor, 250.00279px -433.01207px 55px currentColor, 250.00279px -433.01207px 75px currentColor, 224.97966px -268.11461px 5px #fff, 224.97966px -268.11461px 10px #fff, 224.97966px -268.11461px 20px currentColor, 224.97966px -268.11461px 30px currentColor, 224.97966px -268.11461px 40px currentColor, 224.97966px -268.11461px 55px currentColor, 224.97966px -268.11461px 75px currentColor, 153.21347px -128.55641px 5px #fff, 153.21347px -128.55641px 10px #fff, 153.21347px -128.55641px 20px currentColor, 153.21347px -128.55641px 30px currentColor, 153.21347px -128.55641px 40px currentColor, 153.21347px -128.55641px 55px currentColor, 153.21347px -128.55641px 75px currentColor, 433.03515px -249.99435px 5px #fff, 433.03515px -249.99435px 10px #fff, 433.03515px -249.99435px 20px currentColor, 433.03515px -249.99435px 30px currentColor, 433.03515px -249.99435px 40px currentColor, 433.03515px -249.99435px 55px currentColor, 433.03515px -249.99435px 75px currentColor, 328.92262px -119.69922px 5px #fff, 328.92262px -119.69922px 10px #fff, 328.92262px -119.69922px 20px currentColor, 328.92262px -119.69922px 30px currentColor, 328.92262px -119.69922px 40px currentColor, 328.92262px -119.69922px 55px currentColor, 328.92262px -119.69922px 75px currentColor, 196.99409px -34.72095px 5px #fff, 196.99409px -34.72095px 10px #fff, 196.99409px -34.72095px 20px currentColor, 196.99409px -34.72095px 30px currentColor, 196.99409px -34.72095px 40px currentColor, 196.99409px -34.72095px 55px currentColor, 196.99409px -34.72095px 75px currentColor;
                opacity: 0;
            }
        }

        @keyframes bomb-rocket-animate-1 {
            0% {
                -webkit-transform: rotate(-10deg) translateY(0) scale(0);
                transform: rotate(-10deg) translateY(0) scale(0);
                opacity: 1;
                box-shadow: none;
            }
            0.1% {
                -webkit-transform: rotate(-10deg) translateY(0) scale(0.1, 0.5);
                transform: rotate(-10deg) translateY(0) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1, 0.5);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50.1% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor;
                opacity: 1;
            }
            75% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 500px 0px 5px #fff, 500px 0px 10px #fff, 500px 0px 20px currentColor, 500px 0px 30px currentColor, 500px 0px 40px currentColor, 500px 0px 55px currentColor, 500px 0px 75px currentColor, 344.68271px 60.77686px 5px #fff, 344.68271px 60.77686px 10px #fff, 344.68271px 60.77686px 20px currentColor, 344.68271px 60.77686px 30px currentColor, 344.68271px 60.77686px 40px currentColor, 344.68271px 60.77686px 55px currentColor, 344.68271px 60.77686px 75px currentColor, 187.93852px 68.40403px 5px #fff, 187.93852px 68.40403px 10px #fff, 187.93852px 68.40403px 20px currentColor, 187.93852px 68.40403px 30px currentColor, 187.93852px 68.40403px 40px currentColor, 187.93852px 68.40403px 55px currentColor, 187.93852px 68.40403px 75px currentColor, 433.0127px 250px 5px #fff, 433.0127px 250px 10px #fff, 433.0127px 250px 20px currentColor, 433.0127px 250px 30px currentColor, 433.0127px 250px 40px currentColor, 433.0127px 250px 55px currentColor, 433.0127px 250px 75px currentColor, 268.11556px 224.97566px 5px #fff, 268.11556px 224.97566px 10px #fff, 268.11556px 224.97566px 20px currentColor, 268.11556px 224.97566px 30px currentColor, 268.11556px 224.97566px 40px currentColor, 268.11556px 224.97566px 55px currentColor, 268.11556px 224.97566px 75px currentColor, 128.55752px 153.20889px 5px #fff, 128.55752px 153.20889px 10px #fff, 128.55752px 153.20889px 20px currentColor, 128.55752px 153.20889px 30px currentColor, 128.55752px 153.20889px 40px currentColor, 128.55752px 153.20889px 55px currentColor, 128.55752px 153.20889px 75px currentColor, 250px 433.0127px 5px #fff, 250px 433.0127px 10px #fff, 250px 433.0127px 20px currentColor, 250px 433.0127px 30px currentColor, 250px 433.0127px 40px currentColor, 250px 433.0127px 55px currentColor, 250px 433.0127px 75px currentColor, 119.70705px 328.89242px 5px #fff, 119.70705px 328.89242px 10px #fff, 119.70705px 328.89242px 20px currentColor, 119.70705px 328.89242px 30px currentColor, 119.70705px 328.89242px 40px currentColor, 119.70705px 328.89242px 55px currentColor, 119.70705px 328.89242px 75px currentColor, 34.72964px 196.96155px 5px #fff, 34.72964px 196.96155px 10px #fff, 34.72964px 196.96155px 20px currentColor, 34.72964px 196.96155px 30px currentColor, 34.72964px 196.96155px 40px currentColor, 34.72964px 196.96155px 55px currentColor, 34.72964px 196.96155px 75px currentColor, 0px 500px 5px #fff, 0px 500px 10px #fff, 0px 500px 20px currentColor, 0px 500px 30px currentColor, 0px 500px 40px currentColor, 0px 500px 55px currentColor, 0px 500px 75px currentColor, -60.77686px 344.68271px 5px #fff, -60.77686px 344.68271px 10px #fff, -60.77686px 344.68271px 20px currentColor, -60.77686px 344.68271px 30px currentColor, -60.77686px 344.68271px 40px currentColor, -60.77686px 344.68271px 55px currentColor, -60.77686px 344.68271px 75px currentColor, -68.40403px 187.93852px 5px #fff, -68.40403px 187.93852px 10px #fff, -68.40403px 187.93852px 20px currentColor, -68.40403px 187.93852px 30px currentColor, -68.40403px 187.93852px 40px currentColor, -68.40403px 187.93852px 55px currentColor, -68.40403px 187.93852px 75px currentColor, -250px 433.0127px 5px #fff, -250px 433.0127px 10px #fff, -250px 433.0127px 20px currentColor, -250px 433.0127px 30px currentColor, -250px 433.0127px 40px currentColor, -250px 433.0127px 55px currentColor, -250px 433.0127px 75px currentColor, -224.97566px 268.11556px 5px #fff, -224.97566px 268.11556px 10px #fff, -224.97566px 268.11556px 20px currentColor, -224.97566px 268.11556px 30px currentColor, -224.97566px 268.11556px 40px currentColor, -224.97566px 268.11556px 55px currentColor, -224.97566px 268.11556px 75px currentColor, -153.20889px 128.55752px 5px #fff, -153.20889px 128.55752px 10px #fff, -153.20889px 128.55752px 20px currentColor, -153.20889px 128.55752px 30px currentColor, -153.20889px 128.55752px 40px currentColor, -153.20889px 128.55752px 55px currentColor, -153.20889px 128.55752px 75px currentColor, -433.0127px 250px 5px #fff, -433.0127px 250px 10px #fff, -433.0127px 250px 20px currentColor, -433.0127px 250px 30px currentColor, -433.0127px 250px 40px currentColor, -433.0127px 250px 55px currentColor, -433.0127px 250px 75px currentColor, -328.89242px 119.70705px 5px #fff, -328.89242px 119.70705px 10px #fff, -328.89242px 119.70705px 20px currentColor, -328.89242px 119.70705px 30px currentColor, -328.89242px 119.70705px 40px currentColor, -328.89242px 119.70705px 55px currentColor, -328.89242px 119.70705px 75px currentColor, -196.96155px 34.72964px 5px #fff, -196.96155px 34.72964px 10px #fff, -196.96155px 34.72964px 20px currentColor, -196.96155px 34.72964px 30px currentColor, -196.96155px 34.72964px 40px currentColor, -196.96155px 34.72964px 55px currentColor, -196.96155px 34.72964px 75px currentColor, -500px 0px 5px #fff, -500px 0px 10px #fff, -500px 0px 20px currentColor, -500px 0px 30px currentColor, -500px 0px 40px currentColor, -500px 0px 55px currentColor, -500px 0px 75px currentColor, -344.68271px -60.77686px 5px #fff, -344.68271px -60.77686px 10px #fff, -344.68271px -60.77686px 20px currentColor, -344.68271px -60.77686px 30px currentColor, -344.68271px -60.77686px 40px currentColor, -344.68271px -60.77686px 55px currentColor, -344.68271px -60.77686px 75px currentColor, -187.93852px -68.40403px 5px #fff, -187.93852px -68.40403px 10px #fff, -187.93852px -68.40403px 20px currentColor, -187.93852px -68.40403px 30px currentColor, -187.93852px -68.40403px 40px currentColor, -187.93852px -68.40403px 55px currentColor, -187.93852px -68.40403px 75px currentColor, -433.0127px -250px 5px #fff, -433.0127px -250px 10px #fff, -433.0127px -250px 20px currentColor, -433.0127px -250px 30px currentColor, -433.0127px -250px 40px currentColor, -433.0127px -250px 55px currentColor, -433.0127px -250px 75px currentColor, -268.11555px -224.97566px 5px #fff, -268.11555px -224.97566px 10px #fff, -268.11555px -224.97566px 20px currentColor, -268.11555px -224.97566px 30px currentColor, -268.11555px -224.97566px 40px currentColor, -268.11555px -224.97566px 55px currentColor, -268.11555px -224.97566px 75px currentColor, -128.55752px -153.20889px 5px #fff, -128.55752px -153.20889px 10px #fff, -128.55752px -153.20889px 20px currentColor, -128.55752px -153.20889px 30px currentColor, -128.55752px -153.20889px 40px currentColor, -128.55752px -153.20889px 55px currentColor, -128.55752px -153.20889px 75px currentColor, -249.99998px -433.0127px 5px #fff, -249.99998px -433.0127px 10px #fff, -249.99998px -433.0127px 20px currentColor, -249.99998px -433.0127px 30px currentColor, -249.99998px -433.0127px 40px currentColor, -249.99998px -433.0127px 55px currentColor, -249.99998px -433.0127px 75px currentColor, -119.70701px -328.89241px 5px #fff, -119.70701px -328.89241px 10px #fff, -119.70701px -328.89241px 20px currentColor, -119.70701px -328.89241px 30px currentColor, -119.70701px -328.89241px 40px currentColor, -119.70701px -328.89241px 55px currentColor, -119.70701px -328.89241px 75px currentColor, -34.72959px -196.96154px 5px #fff, -34.72959px -196.96154px 10px #fff, -34.72959px -196.96154px 20px currentColor, -34.72959px -196.96154px 30px currentColor, -34.72959px -196.96154px 40px currentColor, -34.72959px -196.96154px 55px currentColor, -34.72959px -196.96154px 75px currentColor, 0.00028px -499.99994px 5px #fff, 0.00028px -499.99994px 10px #fff, 0.00028px -499.99994px 20px currentColor, 0.00028px -499.99994px 30px currentColor, 0.00028px -499.99994px 40px currentColor, 0.00028px -499.99994px 55px currentColor, 0.00028px -499.99994px 75px currentColor, 60.77729px -344.68262px 5px #fff, 60.77729px -344.68262px 10px #fff, 60.77729px -344.68262px 20px currentColor, 60.77729px -344.68262px 30px currentColor, 60.77729px -344.68262px 40px currentColor, 60.77729px -344.68262px 55px currentColor, 60.77729px -344.68262px 75px currentColor, 68.40456px -187.93841px 5px #fff, 68.40456px -187.93841px 10px #fff, 68.40456px -187.93841px 20px currentColor, 68.40456px -187.93841px 30px currentColor, 68.40456px -187.93841px 40px currentColor, 68.40456px -187.93841px 55px currentColor, 68.40456px -187.93841px 75px currentColor, 250.00279px -433.01207px 5px #fff, 250.00279px -433.01207px 10px #fff, 250.00279px -433.01207px 20px currentColor, 250.00279px -433.01207px 30px currentColor, 250.00279px -433.01207px 40px currentColor, 250.00279px -433.01207px 55px currentColor, 250.00279px -433.01207px 75px currentColor, 224.97966px -268.11461px 5px #fff, 224.97966px -268.11461px 10px #fff, 224.97966px -268.11461px 20px currentColor, 224.97966px -268.11461px 30px currentColor, 224.97966px -268.11461px 40px currentColor, 224.97966px -268.11461px 55px currentColor, 224.97966px -268.11461px 75px currentColor, 153.21347px -128.55641px 5px #fff, 153.21347px -128.55641px 10px #fff, 153.21347px -128.55641px 20px currentColor, 153.21347px -128.55641px 30px currentColor, 153.21347px -128.55641px 40px currentColor, 153.21347px -128.55641px 55px currentColor, 153.21347px -128.55641px 75px currentColor, 433.03515px -249.99435px 5px #fff, 433.03515px -249.99435px 10px #fff, 433.03515px -249.99435px 20px currentColor, 433.03515px -249.99435px 30px currentColor, 433.03515px -249.99435px 40px currentColor, 433.03515px -249.99435px 55px currentColor, 433.03515px -249.99435px 75px currentColor, 328.92262px -119.69922px 5px #fff, 328.92262px -119.69922px 10px #fff, 328.92262px -119.69922px 20px currentColor, 328.92262px -119.69922px 30px currentColor, 328.92262px -119.69922px 40px currentColor, 328.92262px -119.69922px 55px currentColor, 328.92262px -119.69922px 75px currentColor, 196.99409px -34.72095px 5px #fff, 196.99409px -34.72095px 10px #fff, 196.99409px -34.72095px 20px currentColor, 196.99409px -34.72095px 30px currentColor, 196.99409px -34.72095px 40px currentColor, 196.99409px -34.72095px 55px currentColor, 196.99409px -34.72095px 75px currentColor;
                opacity: 1;
            }
            100% {
                -webkit-transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                transform: rotate(-10deg) translateY(-50vh) scale(0.1);
                background: transparent;
                box-shadow: 500px 0px 5px #fff, 500px 0px 10px #fff, 500px 0px 20px currentColor, 500px 0px 30px currentColor, 500px 0px 40px currentColor, 500px 0px 55px currentColor, 500px 0px 75px currentColor, 344.68271px 60.77686px 5px #fff, 344.68271px 60.77686px 10px #fff, 344.68271px 60.77686px 20px currentColor, 344.68271px 60.77686px 30px currentColor, 344.68271px 60.77686px 40px currentColor, 344.68271px 60.77686px 55px currentColor, 344.68271px 60.77686px 75px currentColor, 187.93852px 68.40403px 5px #fff, 187.93852px 68.40403px 10px #fff, 187.93852px 68.40403px 20px currentColor, 187.93852px 68.40403px 30px currentColor, 187.93852px 68.40403px 40px currentColor, 187.93852px 68.40403px 55px currentColor, 187.93852px 68.40403px 75px currentColor, 433.0127px 250px 5px #fff, 433.0127px 250px 10px #fff, 433.0127px 250px 20px currentColor, 433.0127px 250px 30px currentColor, 433.0127px 250px 40px currentColor, 433.0127px 250px 55px currentColor, 433.0127px 250px 75px currentColor, 268.11556px 224.97566px 5px #fff, 268.11556px 224.97566px 10px #fff, 268.11556px 224.97566px 20px currentColor, 268.11556px 224.97566px 30px currentColor, 268.11556px 224.97566px 40px currentColor, 268.11556px 224.97566px 55px currentColor, 268.11556px 224.97566px 75px currentColor, 128.55752px 153.20889px 5px #fff, 128.55752px 153.20889px 10px #fff, 128.55752px 153.20889px 20px currentColor, 128.55752px 153.20889px 30px currentColor, 128.55752px 153.20889px 40px currentColor, 128.55752px 153.20889px 55px currentColor, 128.55752px 153.20889px 75px currentColor, 250px 433.0127px 5px #fff, 250px 433.0127px 10px #fff, 250px 433.0127px 20px currentColor, 250px 433.0127px 30px currentColor, 250px 433.0127px 40px currentColor, 250px 433.0127px 55px currentColor, 250px 433.0127px 75px currentColor, 119.70705px 328.89242px 5px #fff, 119.70705px 328.89242px 10px #fff, 119.70705px 328.89242px 20px currentColor, 119.70705px 328.89242px 30px currentColor, 119.70705px 328.89242px 40px currentColor, 119.70705px 328.89242px 55px currentColor, 119.70705px 328.89242px 75px currentColor, 34.72964px 196.96155px 5px #fff, 34.72964px 196.96155px 10px #fff, 34.72964px 196.96155px 20px currentColor, 34.72964px 196.96155px 30px currentColor, 34.72964px 196.96155px 40px currentColor, 34.72964px 196.96155px 55px currentColor, 34.72964px 196.96155px 75px currentColor, 0px 500px 5px #fff, 0px 500px 10px #fff, 0px 500px 20px currentColor, 0px 500px 30px currentColor, 0px 500px 40px currentColor, 0px 500px 55px currentColor, 0px 500px 75px currentColor, -60.77686px 344.68271px 5px #fff, -60.77686px 344.68271px 10px #fff, -60.77686px 344.68271px 20px currentColor, -60.77686px 344.68271px 30px currentColor, -60.77686px 344.68271px 40px currentColor, -60.77686px 344.68271px 55px currentColor, -60.77686px 344.68271px 75px currentColor, -68.40403px 187.93852px 5px #fff, -68.40403px 187.93852px 10px #fff, -68.40403px 187.93852px 20px currentColor, -68.40403px 187.93852px 30px currentColor, -68.40403px 187.93852px 40px currentColor, -68.40403px 187.93852px 55px currentColor, -68.40403px 187.93852px 75px currentColor, -250px 433.0127px 5px #fff, -250px 433.0127px 10px #fff, -250px 433.0127px 20px currentColor, -250px 433.0127px 30px currentColor, -250px 433.0127px 40px currentColor, -250px 433.0127px 55px currentColor, -250px 433.0127px 75px currentColor, -224.97566px 268.11556px 5px #fff, -224.97566px 268.11556px 10px #fff, -224.97566px 268.11556px 20px currentColor, -224.97566px 268.11556px 30px currentColor, -224.97566px 268.11556px 40px currentColor, -224.97566px 268.11556px 55px currentColor, -224.97566px 268.11556px 75px currentColor, -153.20889px 128.55752px 5px #fff, -153.20889px 128.55752px 10px #fff, -153.20889px 128.55752px 20px currentColor, -153.20889px 128.55752px 30px currentColor, -153.20889px 128.55752px 40px currentColor, -153.20889px 128.55752px 55px currentColor, -153.20889px 128.55752px 75px currentColor, -433.0127px 250px 5px #fff, -433.0127px 250px 10px #fff, -433.0127px 250px 20px currentColor, -433.0127px 250px 30px currentColor, -433.0127px 250px 40px currentColor, -433.0127px 250px 55px currentColor, -433.0127px 250px 75px currentColor, -328.89242px 119.70705px 5px #fff, -328.89242px 119.70705px 10px #fff, -328.89242px 119.70705px 20px currentColor, -328.89242px 119.70705px 30px currentColor, -328.89242px 119.70705px 40px currentColor, -328.89242px 119.70705px 55px currentColor, -328.89242px 119.70705px 75px currentColor, -196.96155px 34.72964px 5px #fff, -196.96155px 34.72964px 10px #fff, -196.96155px 34.72964px 20px currentColor, -196.96155px 34.72964px 30px currentColor, -196.96155px 34.72964px 40px currentColor, -196.96155px 34.72964px 55px currentColor, -196.96155px 34.72964px 75px currentColor, -500px 0px 5px #fff, -500px 0px 10px #fff, -500px 0px 20px currentColor, -500px 0px 30px currentColor, -500px 0px 40px currentColor, -500px 0px 55px currentColor, -500px 0px 75px currentColor, -344.68271px -60.77686px 5px #fff, -344.68271px -60.77686px 10px #fff, -344.68271px -60.77686px 20px currentColor, -344.68271px -60.77686px 30px currentColor, -344.68271px -60.77686px 40px currentColor, -344.68271px -60.77686px 55px currentColor, -344.68271px -60.77686px 75px currentColor, -187.93852px -68.40403px 5px #fff, -187.93852px -68.40403px 10px #fff, -187.93852px -68.40403px 20px currentColor, -187.93852px -68.40403px 30px currentColor, -187.93852px -68.40403px 40px currentColor, -187.93852px -68.40403px 55px currentColor, -187.93852px -68.40403px 75px currentColor, -433.0127px -250px 5px #fff, -433.0127px -250px 10px #fff, -433.0127px -250px 20px currentColor, -433.0127px -250px 30px currentColor, -433.0127px -250px 40px currentColor, -433.0127px -250px 55px currentColor, -433.0127px -250px 75px currentColor, -268.11555px -224.97566px 5px #fff, -268.11555px -224.97566px 10px #fff, -268.11555px -224.97566px 20px currentColor, -268.11555px -224.97566px 30px currentColor, -268.11555px -224.97566px 40px currentColor, -268.11555px -224.97566px 55px currentColor, -268.11555px -224.97566px 75px currentColor, -128.55752px -153.20889px 5px #fff, -128.55752px -153.20889px 10px #fff, -128.55752px -153.20889px 20px currentColor, -128.55752px -153.20889px 30px currentColor, -128.55752px -153.20889px 40px currentColor, -128.55752px -153.20889px 55px currentColor, -128.55752px -153.20889px 75px currentColor, -249.99998px -433.0127px 5px #fff, -249.99998px -433.0127px 10px #fff, -249.99998px -433.0127px 20px currentColor, -249.99998px -433.0127px 30px currentColor, -249.99998px -433.0127px 40px currentColor, -249.99998px -433.0127px 55px currentColor, -249.99998px -433.0127px 75px currentColor, -119.70701px -328.89241px 5px #fff, -119.70701px -328.89241px 10px #fff, -119.70701px -328.89241px 20px currentColor, -119.70701px -328.89241px 30px currentColor, -119.70701px -328.89241px 40px currentColor, -119.70701px -328.89241px 55px currentColor, -119.70701px -328.89241px 75px currentColor, -34.72959px -196.96154px 5px #fff, -34.72959px -196.96154px 10px #fff, -34.72959px -196.96154px 20px currentColor, -34.72959px -196.96154px 30px currentColor, -34.72959px -196.96154px 40px currentColor, -34.72959px -196.96154px 55px currentColor, -34.72959px -196.96154px 75px currentColor, 0.00028px -499.99994px 5px #fff, 0.00028px -499.99994px 10px #fff, 0.00028px -499.99994px 20px currentColor, 0.00028px -499.99994px 30px currentColor, 0.00028px -499.99994px 40px currentColor, 0.00028px -499.99994px 55px currentColor, 0.00028px -499.99994px 75px currentColor, 60.77729px -344.68262px 5px #fff, 60.77729px -344.68262px 10px #fff, 60.77729px -344.68262px 20px currentColor, 60.77729px -344.68262px 30px currentColor, 60.77729px -344.68262px 40px currentColor, 60.77729px -344.68262px 55px currentColor, 60.77729px -344.68262px 75px currentColor, 68.40456px -187.93841px 5px #fff, 68.40456px -187.93841px 10px #fff, 68.40456px -187.93841px 20px currentColor, 68.40456px -187.93841px 30px currentColor, 68.40456px -187.93841px 40px currentColor, 68.40456px -187.93841px 55px currentColor, 68.40456px -187.93841px 75px currentColor, 250.00279px -433.01207px 5px #fff, 250.00279px -433.01207px 10px #fff, 250.00279px -433.01207px 20px currentColor, 250.00279px -433.01207px 30px currentColor, 250.00279px -433.01207px 40px currentColor, 250.00279px -433.01207px 55px currentColor, 250.00279px -433.01207px 75px currentColor, 224.97966px -268.11461px 5px #fff, 224.97966px -268.11461px 10px #fff, 224.97966px -268.11461px 20px currentColor, 224.97966px -268.11461px 30px currentColor, 224.97966px -268.11461px 40px currentColor, 224.97966px -268.11461px 55px currentColor, 224.97966px -268.11461px 75px currentColor, 153.21347px -128.55641px 5px #fff, 153.21347px -128.55641px 10px #fff, 153.21347px -128.55641px 20px currentColor, 153.21347px -128.55641px 30px currentColor, 153.21347px -128.55641px 40px currentColor, 153.21347px -128.55641px 55px currentColor, 153.21347px -128.55641px 75px currentColor, 433.03515px -249.99435px 5px #fff, 433.03515px -249.99435px 10px #fff, 433.03515px -249.99435px 20px currentColor, 433.03515px -249.99435px 30px currentColor, 433.03515px -249.99435px 40px currentColor, 433.03515px -249.99435px 55px currentColor, 433.03515px -249.99435px 75px currentColor, 328.92262px -119.69922px 5px #fff, 328.92262px -119.69922px 10px #fff, 328.92262px -119.69922px 20px currentColor, 328.92262px -119.69922px 30px currentColor, 328.92262px -119.69922px 40px currentColor, 328.92262px -119.69922px 55px currentColor, 328.92262px -119.69922px 75px currentColor, 196.99409px -34.72095px 5px #fff, 196.99409px -34.72095px 10px #fff, 196.99409px -34.72095px 20px currentColor, 196.99409px -34.72095px 30px currentColor, 196.99409px -34.72095px 40px currentColor, 196.99409px -34.72095px 55px currentColor, 196.99409px -34.72095px 75px currentColor;
                opacity: 0;
            }
        }
        @-webkit-keyframes bomb-rocket-animate-2 {
            0% {
                -webkit-transform: rotate(0deg) translateY(0) scale(0);
                transform: rotate(0deg) translateY(0) scale(0);
                opacity: 1;
                box-shadow: none;
            }
            0.1% {
                -webkit-transform: rotate(0deg) translateY(0) scale(0.1, 0.5);
                transform: rotate(0deg) translateY(0) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50% {
                -webkit-transform: rotate(0deg) translateY(-60vh) scale(0.1, 0.5);
                transform: rotate(0deg) translateY(-60vh) scale(0.1, 0.5);
                background: -webkit-linear-gradient(top, currentColor 0%, #000000 80%);
                background: linear-gradient(180deg, currentColor 0%, #000000 80%);
                box-shadow: none;
                opacity: 1;
            }
            50.1% {
                -webkit-transform: rotate(0deg) translateY(-60vh) scale(0.1);
                transform: rotate(0deg) translateY(-60vh) scale(0.1);
                background: transparent;
                box-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px currentColor, 0 0 75px currentColor, 0 0 5px #fff, 0 0 10px #fff, 0 0 20px currentColor, 0 0 30px currentColor, 0 0 40px currentColor, 0 0 55px cu

            }

        }
        .box1{
            position: relative;
            left: 1100px;


        }
        #textarea{
            display: none;
            width: 400px;
            height: 600px;
            background-color: royalblue;
            border-radius: 25px;
            border-width: 3px;
            border-style: dotted;
            font-family: 楷体;

            opacity: 0.7;
            font-size: 1.25rem;
            color: white;

        }
        #star{
            width: 100px;
            height: 100px;

        }

        #div{

            width: 400px;
            height: 400px;
            border-radius: 300px;
            border-width: 5px;
            border-style: dashed;
            overflow: hidden;
            border-color: rgba(236, 104, 64, 0.774);
            background-repeat: inherit;
            position: relative;
            left: 700px;



        }
        ul{
            width: 1680px;
            height: 450px;


            float: left;
            display: flex;
            flex-direction: row;
            position: relative;

        }
        li{

            width: 420px;
            height: 600px;
            position: relative;


        }
        #div1{
            display: none;
        }
        .img{
            margin: 0px;
            width: 420px;
            height: 600px;
            position: relative;
            bottom: 20px;
            right: 40px;
            margin-bottom: 100px;
        }
        #button1{
            width: 50px;
            height: 50px;
            background-color: pink;
            border-radius: 35px;
            opacity: 0.4;
            border-style: groove;
            position: absolute;
            left: 46.875rem;
            color: floralwhite;
            text-align: center;

        }
        #button2{
            width: 50px;
            height: 50px;
            background-color: pink;
            border-radius: 35px;
            border-style: groove;
            opacity: 0.4;
            position: absolute;
            left: 62.5rem;
            color: floralwhite;
            text-align: center;
        }



    </style>
    <script>
        $(function(){
            //控件一的标签
            var star=$('#star');
            //文本域的标签
            var textarea=$('#textarea');
            var text=$('#text');
            //box容器
            var box1=$('.box');
            star.click(function(){
                textarea.slideDown('slow')
            });
            textarea.click(function(){
                textarea.slideUp('slow');
                button1.show();
            })
            var star1=$('#span1');

            var ulbox=$('#ulbox');
            var div=$('#div1');
            //建立时间动画
            var time=setInterval(move,2000);
            //获取li的长度
            var len=$('li').length;
            //下标
            var index=0;
            //左按钮点击事件
            var left=$('#button1').click(move);
            //move动作
            star1.click(function(){
                box1.hide();
                text.hide();
                div.slideDown('slow');
            })
            function move(){
                //防多点击
                if(ulbox.is(":animated")){
                    return false;
                }
                //判断下标是否大于len的长度
                if(index>=len-1){
                    ulbox.css('left','0px');
                    index=0;
                }
                index++;//执行一次下标加一
                //ul的动画
                ulbox.animate({left:
                        index*-420});
            }

            //鼠标移出移入
            var button=$('button').mouseover(function(){

                clearInterval(time);
            }).mouseout(function(){
                time=setInterval(move,2000);
            })
            //右按钮点击事件
            var right=$('#button2').click(function(){
                //防多点击
                if(ulbox.is(":animated")){
                    return false;
                }
                //判断下标是否大于len的长度
                if(index<0){
                    ulbox.css('left','-1600px');
                    index=0;
                }
                index--;//执行一次下标jian一
                //ul的动画
                ulbox.animate({left:
                        index*-420});
            });


        });


    </script>

</head>
<body>
<div class="box">
    <div class="out_front"><img src="psb%20(1).jpg" width="200" height="200"></div>
    <div class="out_back"><img src="psb%20(3).jpg" width="200" height="200" ></div>
    <div class="out_left"><img src="psc.jpg" width="200" height="200" ></div>
    <div class="out_right"><img src="psc1.jpg" width="200" height="200"></div>
    <div class="out_bottom"><img src="psc2.jpg" width="200" height="200" ></div>
    <div class="out_top"><img src="./psb%204.jpg" width="200" height="200" ></div>
</div>

<div class="box2">
    <img src="速抠图%20(5).png" width="20" height="20" >
    <img src="速抠图%20(5).png" width="30" height="30" >
    <img id="span1" src="速抠图%20(5).png" width="100" height="100">
    <img src="速抠图%20(5).png" width="50" height="50">
    <img src="速抠图%20(5).png" width="30" height="30" >

</div>
<div class="box1">
    <img src="速抠图%20(5).png" width="20" height="20" >
    <img src="速抠图%20(5).png" width="30" height="30" >
    <img id="star" src="速抠图%20(5).png" >
    <img src="速抠图%20(5).png" width="50" height="50">
    <img src="速抠图%20(5).png" width="30" height="30" >
    <textarea name="" id="textarea" cols="30" rows="10">老大,许久不见了,从高中毕业,到大学,到入伍。都不曾见过你了,我最想做的事也是最喜欢的事就是每次见面你都会给我一个很大拥抱。几年了，从最初的四个人，践行渐变，一路走来，好的是老大始终是我的老大，还是那个愿意为我挡风遮雨的老大。时间渐长，而身边的朋友越来越少，想想这不是一种荒凉，其实也蛮好，其实也对，留的下来的才是最真的。以前我们的敌人是青春，后来变成了生活，生活的磨练的确也抚平了你我心中的气焰，也磨灭了一切不切实际的幻想。好久不见，我很庆幸，也很感恩能够遇见你。所有的人物都在变，所有的事情也都在变。但好的事，你在我身后，是我的老大，也是我坚实的后盾。小二，这几年经历了一些，老大也一样。或许我们都没有了曾经的锋芒毕露，曾经的年少无知。都在彼此为了生活忙碌奔波，但总归好的是，小二还是小二，老大还是老大。<br>远在他乡，老大得照顾好自己呀！小二，在努力成长，总有一天能为老大挡风遮雨！！！</textarea>
</div>
<div id="div1">
    <div id="div">
        <ul id="ulbox">
            <li type="none"><img src="./1.jpg" class="img" alt="" width="400px"></li>
            <li type="none"><img src="./2.jpg" class="img" alt=""></li>
            <li type="none"><img src="./3.jpg" class="img" alt=""></li>
            <li type="none"><img src="./4.jpg" class="img" alt=""></li>
            <li><img src="5.jpg" class="img"></li>
            <li><img src="6.jpg" class="img"></li>
            <li><img src="7.jpg" class="img"></li>
            <li><img src="8.jpg" class="img"></li>
            <li><img src="9.jpg" class="img"></li>

        </ul>

    </div>
    <button type="button" id='button1'>《</button>
    <button type="button" id="button2">》</button>
</div>

<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="bomb-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="normal-rocket"></div>
<div class="text" id="text">Happy Birthday！</div>
<audio src="sA0DAFlM4VGAaldnAEssE38aP0I125.mp3" autoplay="autoplay">
    当前浏览器不支持audio
</audio>
</body>
</html>
