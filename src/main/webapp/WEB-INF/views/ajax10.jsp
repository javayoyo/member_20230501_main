<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-02
  Time: 오전 9:00
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax10()">함수호출</button>
<div id="result-area">

</div>
</body>
<script>
    const ajax10 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1"
        };
        $.ajax({
            type: "post",
            url: "/ajax10",
            // js object -> JSON 변환(복붙용)
            data: JSON.stringify(member),
            // 서버에게 보내는 데이터의 타입을 지정
            contentType: "application/json",
            success: function (res) {
                console.log("요청성공", res);
            //     member 에 담긴 이름 접근
                console.log("name" , res.member.memberName);
                for (let i in res.memberList) {
                    console.log(res.memberList[i]);
                }

            },
            error: function () {
                console.log("요청실패");
            }
        });
    }
</script>
</html>