<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 - write</title>

</head>

<body>

    <div class="container">
        <%@ include file="../layout/header.jsp" %>


        <div id="main" style=" margin: 20px 0;">
            <div><i class="fa fa-comments fa-2x"> 자유게시판</i></div>
            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col-6">
                    <h4><i class="fa fa-plus-circle"></i> 새글 쓰기</h4>
                    
                </div>
                <div class="col-6 text-right">
                    <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
                </div>
            </div>
            
            <!--새글쓰기-->
            <div class="row" style="margin: 10px 30px 20px 50px">
                <form class="card card-body bg-light" name="bdfrm" method="post">
                    <div class="form-group row">
                        <div class="col-1"></div>
                        <label class="col-form-label col-2 text-right" for="title">제목</label>
                        <input type="text" id="title" name="subject" class="form-control col">
                        <div class="col-1"></div>
                    </div>
                    <div class="form-group row">
                        <div class="col-1"></div>
                        <label class="col-form-label col-2 text-right" for="title">본문내용</label>
                        <textarea rows="15" type="text" id="contents" name="contents" class="form-control col"></textarea>
                        <div class="col-1"></div>
                    </div>
                    <div class="form-group row">
                        <div class="col-1"></div>
                        <label class="col-form-label col-2 text-right" for="title">자동 입력방지</label>
                        <img src="../../img/captchav1.png" width="50%" style="margin-bottom: 10px">
                        <input type="text" id="captcha" class="form-control col-3" style="margin-left: 200px">
                        &nbsp;
                        <button type="button" class="btn btn-dark"><i class="fa fa-refresh"></i> 다른 captcha 보기</button>
                    
                    </div>
                    <div class="form-group row justify-content-center" style="border-top: 2px solid black; margin-top: 30px; padding-top:20px;">
                        <button type="button" class="btn btn-primary" id="newbtn"><i class="fa fa-check"></i> 입력완료</button>
                        &nbsp;
                        <button type="button" class="btn btn-danger" id="cancelbtn"><i class="fa fa-remove"></i> 취소하기</button>
                    
                    </div>
                
                </form>
            </div>
            
            
        </div>


        <%@include file="../layout/footer.jsp" %>


    </div>


    <!--로그인 모달창-->
    <%@ include file="../layout/modal.jsp" %>






    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="/resources/js/bdfrmcheck.js"></script>
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
        $(function() {
            $('#joinbtn').on('click', function(e) {
                location.href = '/join/agree';
            });
        });
    </script>

    <%--<!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->--%>
    <%--<script>--%>
        <%--$(function() {--%>
            <%--$('#checkbtn').on('click', function(e) {--%>
                <%--location.href = '../join/checkme2.jsp';--%>
            <%--});--%>
        <%--});--%>
    <%--</script>--%>
    
    <!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->
    <script>
//        $(function() {
//            $('#newbtn').on('click', function(e) {
//                location.href = 'write.jsp';
//            });
//        });
    </script>
        <script>
        $(function() {
            $('#listbtn').on('click', function(e) {
                location.href = '/board/list';
            });
        });
    </script>
        <script>
        $(function() {
            $('#canclebtn').on('click', function(e) {
                location.href = '/board/list';
            });
        });
    </script>
           


</body></html>