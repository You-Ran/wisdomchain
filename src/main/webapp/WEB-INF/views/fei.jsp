<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/14
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta contentType="text/html;charset=UTF-8"/>
<head>
    <title>中文测试</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/qrcode.js"></script>
</head>
<body>
<input id="text" type="text" value="http://jindo.dev.naver.com/collie" style="width:80%"/><br/>
<div id="qrcode" style="width:100px; height:100px; margin-top:15px;"></div>

<script type="text/javascript">
    var qrcode = new QRCode(document.getElementById("qrcode"), {
        width: 100,
        height: 100
    });

    function makeCode() {
        var elText = document.getElementById("text");

        if (!elText.value) {
            alert("Input a text");
            elText.focus();
            return;
        }

        qrcode.makeCode(elText.value);
    }

    makeCode();

    $("#text").on("blur", function () {
        makeCode();
    }).on("keydown", function (e) {
        if (e.keyCode == 13) {
            makeCode();
        }
    });
</script>
</body>
</html>
