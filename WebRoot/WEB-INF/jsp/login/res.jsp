<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>


    <script type="text/javascript">
        function check() {
            var reg1 = /^[\u4E00-\u9FA5A-Za-z0-9]+$/;//用户名验证规则
            var reg2 = /^[a-zA-Z]\w{5,17}$/;//密码验证规则
            var reg3 = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;//手机号验证规则
            var reg4 = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;//邮箱验证规则

            var name = document.getElementById("U1");
            if(!reg1.test(name.value) || name.value == "") {
                alert("用户名格式错误！！！");
                name.focus();
                return false;
            }
            var pass = document.getElementById("U2");
            if(!reg2.test(pass.value) || pass.value == "") {
                alert("密码只能以字母开头，长度在6~18之间，只能包含字符、数字和下划线");
                pass.focus();
                return false;
            }
            var phone = document.getElementById("U3");
            if(phone.value == "" || !reg3.test(phone.value)) {
                alert("手机号格式如：XXX-XXXXXXX,"+" XXXX- XXXXXXXX,"+" XXX-XXXXXXX,"+" XXX-XXXXXXXX,"+" XXXXXXX,"+" XXXXXXXX");
                phone.focus();
                return false;
            }
            var email = document.getElementById("U4");
            if(email.value == "" || !reg4.test(email.value)) {
                alert("邮箱格式错误！！！");
                email.focus();
                return false;
            }
        }
        if ("${requestScope.msg}" != "") {
            alert("${requestScope.msg}");
        }
    </script>


</head>
<body>
<div class="width100 hidden_yh" style="border-top: 1px solid #ddd">
    <div class="width1200 hidden_yh center_yh" style="margin-top: 75px">
        <form action="${ctx}/login/toRes" method="post">
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">用户名：</span>
                <input id="U1" type="text" name="userName" placeholder="请输入您的用户名" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">设置密码：</span>
                <input  id="U2" type="text" name="passWord" placeholder="建议至少使用两种字符组合" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">手机号：</span>
                <input id="U3" type="text" name="phone" placeholder="建议使用常用的手机" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">电子邮箱：</span>
                <input id="U4" type="text" name="email" placeholder="请输入邮箱" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <p class="font14 c_66" style="text-indent: 500px;margin-top: 30px;">
                <input name="checkBox" type="checkbox">我已阅读并同意<a href="#" class="red">《会员注册协议》</a>和<a href="#" class="red">《隐私保护政策》</a>
            </p>
            <input type="submit" value="提交" class="ipt_tj" style="width: 295px;height: 44px;margin-left: 500px;"  onClick="return check()">
        </form>
    </div>
</div>
<%@include file="/common/ufooter.jsp"%>
</body>
</html>



















