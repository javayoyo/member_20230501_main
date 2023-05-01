<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>

<%-- ajax(Asynchronous(비동기식) Javascript and XML ) 에이작스,아작스,에이젝스
화면 바뀜없이(번쩍,새로고침) 뒤에서 요청을 동시에 처리 가능 /
ex 중복체크,댓글,좋아요,장바구니
cf ) axios 악시오스--%>

<button onclick="ajax05()">함수호출</button>


</body>
<script>

  const ajax05 = () => {
      const memberEmail = "aa@aa.com";
      const memberPassword = "12132aas";
      const memberName = "member1";
    $.ajax({
        type: "get",
        url: "/ajax05",
        data: {
            "memberEmail": memberEmail,
           "memberPassword": memberPassword,
            "memberName": memberName
        },
      success: function (res) {
      console.log("요청성공", res);
      console.log(res.memberEmail);
          console.log(res.memberPassword);
          console.log(res.memberName);

      },
      error: function () {
      console.log("요청실패");
      }
    });
  }
//   type 전송방식 url 요청하는 주소값
//     success 요청 성공하면 실행할 부분, error 요청실패 때 실행할 부분

</script>

</html>
