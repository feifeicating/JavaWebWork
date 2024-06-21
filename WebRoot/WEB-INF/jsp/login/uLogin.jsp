<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户登录</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>

    <script type="text/javascript">

        function check() {
            var user = document.getElementById("uName");
            if(user.value == "") {
                alert("用户名不能为空");
                user.focus();
                return false;
            }
            var pass = document.getElementById("uPwd");
            if(pass.value == "") {
                alert("密码不能为空");
                pass.focus();
                return false;
            }
            myForm.submit();
        }
        if ("${requestScope.msg}" != "") {
            alert("${requestScope.msg}");
        }

        function changeImg(){
            var img = document.getElementById("img");
            img.src = "${ctx}/authImage?date=" + new Date();;
        }
    </script>
</head>
<body>
<div class="width100 hidden_yh" style="height: 573px;background: url('${ctx}/resource/user/images/bj.jpg') no-repeat center">
    <div class="width1200 hidden_yh center_yh" style="margin-top: 75px">
        <div class="right_yh bj_fff" style="width:408px;height: 438px;">
            <form action="${ctx}/login/utoLogin" method="post" name="myForm">
                <h3 class="tcenter font30 c_33" style="font-weight: 100;margin-top: 36px;margin-bottom: 36px;">账户登录</h3>
                <div class="center_yh hidden_yh" style="width: 336px;">
                    <div class="width100 box-sizing hidden_yh" style="height: 44px;border:1px solid #c9c9c9;margin-bottom: 34px;">
                        <img src="${ctx}/resource/user/images/rw.jpg" alt="" class="left_yh" width="42" height="42">
                        <input id="uName" type="text" placeholder="请输入用户名或手机号" name="userName" value="" style="border: 0;width: 292px;height: 42px; font-size: 16px;text-indent: 22px;">
                    </div>
                    <div class="width100 box-sizing hidden_yh" style="height: 44px;border:1px solid #c9c9c9;margin-bottom: 34px;">
                        <img src="${ctx}/resource/user/images/pass.jpg" alt="" class="left_yh" width="42" height="42">
                        <input id="uPwd" type="password" placeholder="请输入密码" name="passWord" value="" style="border: 0;width: 292px;height: 42px; font-size: 16px;text-indent: 22px;">
                    </div>
                    <input type="text" name="verify" placeholder="验证码" style="width: 102px;height: 32px;float: left;margin-right: 131px;">
                    <div class="width100 box-sizing hidden_yh" style="height: 32px;width: 102px!important;border:1px solid #c9c9c9;margin-bottom: 34px;">
                        <img id="img" src="${ctx}/authImage" onClick="changeImg()"/>
                        <a href='#' onclick="javascript:changeImg()" style="color:white;"><label style="color:white;">看不清？</label></a>
                    </div>
                    <input type="submit" value="登录" class="center_yh" style="width: 100%;height: 43px;font-size: 16px;background: #dd4545;outline: none;border: 0;color: #fff; cursor:pointer;" onClick="return check()">
                </div>
            </form>
        </div>
    </div>
</div>
<%@include file="/common/ufooter.jsp"%>
</body>
</html>



















