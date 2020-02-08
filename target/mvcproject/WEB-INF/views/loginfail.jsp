<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html>


<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4: index</title>
    <link rel="stylesheet" href="../css/base.css">


</head>
<body>

<div class="container">
    <%@ include file="layout/header.jsp" %>

    <div id="main">
        <div class="row" style="min-height: 550px;">
            <div class="col-md-12 text-center">
                <h1 class="display-3">로그인 실패</h1>

            </div>
        </div>
    </div>

    <%@include file="layout/footer.jsp" %>

</div>


<!--로그인 모달창-->
<div id="loginmodal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">닫기</button> <!--data-dismiss="modal"을 하면 모달창이 닫김-->
            </div>
            <div class="modal-body">
                <form id="loginfrm" name="loginfrm" method="post" action="<%=baseurl%>/proclogin.jsp">
                    <div class="form-group row text-center">
                        <label for="uid" class="col-form-label col-4">아이디</label> <!--col-4 컬럼 너비-->
                        <input type="text" id="uid" name="userid" class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <div class="col-4"></div>
                        <span id="idmsg" class="vdmsg"></span>
                    </div>
                    <div class="form-group row text-center">
                        <label for="pwd" class="col-form-label col-4">비밀번호</label>
                        <input type="password"  id="pwd" name="passwd" class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <div class="col-4"></div>
                        <span id="pwmsg" class="vdmsg" ></span>
                    </div>
                    <div class="form-group row">
                        <div class="col-4"></div><!--체크박스 앞에 4칸을 비워둠-->
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label">로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer justify-content-center"> <!--기본값이 오른쪽 정렬이기 때문에 justify-content-center로 가운데 정렬해야 함-->
                <button type="button" id="loginbtn" class="btn btn-danger">로그인</button>
                <button type="button" id="findidpwbtn" class="btn btn-primary">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>







<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../js/loginfrm.js"></script>


<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>


<!--joinbtn을 클릭하면 일어나는 행동. j쿼리문-->
<script>
    $(function(){
        $('#joinbtn').on('click', function(e){location.href='join/agree.jsp';});
    });
</script>

</body>
</html>