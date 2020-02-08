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
    <link rel="stylesheet" href="/resources/css/base.css">


</head>
<body>

<div class="container">
    <%@ include file="layout/header.jsp" %>

    <div id="main">
        <div class="row">
            <div class="col-md text-center">
                <h1 class="display-3" style="margin: 30px 0;">超秘密 Project 補完計劃</h1>
                <img src="/resources/img/7269180a-3efa-4a5f-834f-fc1aa947d872.jpg" width="65%" style="margin-bottom: 20px">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu odio in magna porta tempus sollicitudin commodo arcu. Proin a risus sit amet lacus vulputate tincidunt. Sed molestie scelerisque mauris at sagittis. Nam risus nisi, commodo eu quam quis, auctor placerat est. Suspendisse mauris sem, pretium eu sodales ut, ullamcorper quis sapien. Aenean sed elit felis. Praesent efficitur iaculis tempus. Mauris hendrerit aliquet velit id blandit. Integer euismod eu urna et consequat. Vivamus lacinia dapibus hendrerit. Vivamus leo mauris, interdum nec sagittis vitae, pharetra a lectus.</p>
                <p><button class="btn btn-success">지금 바로 시작하기</button></p>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md">
                <h2>극비</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
            <div class="col-md">
                <h2>오류</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
            <div class="col-md">
                <h2>경고</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md">
                <h2>위험</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
            <div class="col-md">
                <h2>극비</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
            <div class="col-md">
                <h2>오류</h2>
                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                <p><button class="btn btn-light">자세히 보기 &blacktriangleright;</button> </p>
            </div>
        </div>
    </div>
    <%@include file="layout/footer.jsp" %>

</div>


<!--로그인 모달창-->
<%@ include file="layout/modal.jsp" %>







<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/resources/js/loginfrm.js"></script>


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
        $('#joinbtn').on('click', function(e){location.href='join/agree';});
    });
</script>

</body>
</html>