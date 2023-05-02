<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%@include file="./component/header.jsp"%>
<%@include file="./component/nav.jsp"%>

<div id="section">
  <form action="/save" method="post">
    <input type="text" name="memberEmail" placeholder="이메일" id="member-email" onblur="email_check()"> <br>
    <p id="check-result"></p>
    <input type="text" name="memberPassword" placeholder="비밀번호"> <br>
    <input type="text" name="memberName" placeholder="이름"> <br>
    <input type="text" name="memberBirth" placeholder="생년월일(YYYYMMDD)"> <br>
    <input type="text" name="memberMobile" placeholder="전화번호"> <br>
    <input type="submit" value="회원가입">
  </form>
</div>

<%@include file="./component/footer.jsp"%>
</body>
<script>
  const email_check = () => {
    const email = document.getElementById("member-email").value;
    const result = document.getElementById("check-result");
    $.ajax({
      type: "post",
      url: "/email-check",
      data: {
        "memberEmail": email
      },
      success: function () {
        result.innerHTML = "사용가능한 이메일입니다.";
        result.style.color = "green";
      },
      error: function () {
        result.innerHTML = "이미 사용 중인 이메일입니다.";
        result.style.color = "red";
      }
    });
  }
</script>
</html>