<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 - list</title>

</head>

<body>

    <div class="container">
    <%@ include file="../layout/header.jsp" %>
    <%--<jsp:forward page="../layout/head.jsp"> 로 작성하면 동작이 제대로 되지 않음--%>

    <div id="main" style=" margin: 20px 0;">
            <div><i class="fa fa-comments fa-2x"> 자유게시판</i></div>

            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col text-right">
                    <button type="button" class="btn btn-light" id="newbtn"><i class="fa fa-plus-circle"></i> 새글쓰기</button>
                </div>
            </div>
            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col">
                    <table class="table table-striped" style="border-top: 2px solid black; border-bottom: 2px solid black;">
                        <thead style="background-color: #dff0d8 ">
                            <tr>
                                <th style="width: 7%">번호</th>
                                <th>제목</th>
                                <th style="width: 10%">작성자</th>
                                <th style="width: 10%">작성일</th>
                                <th style="width: 7%">추천</th>
                                <th style="width: 7%">조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="color: red;">
                                <th>공지</th>
                                <th><span class="badge badge-danger">Hot</span> '다크나이트 라이지즈' 예매권 증정 이벤트 실시!!</th>
                                <th>운영자</th>
                                <th>2019.11.14</th>
                                <th>10</th>
                                <th>100</th>
                            </tr>
                            <c:forEach var="b" items="${bds}">
                                <tr>
                                <td>${cnt}</td>
                                <td><a href="<%=baseurl %>/board/view?id=${b.bdid}">${b.subject}</a></td>
                                <td>${b.writer}</td>
                                <td>${fn:substring(b.regdate, 0, 10)}</td>
                                <td>${b.thumbs}</td>
                                <td>${b.views}</td>
                            </tr>
                                <c:set var="cnt" value="${cnt-1}" />
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col">
                    <nav>
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled">
                                <a href="#" class="page-link ">이전</a></li>
                            <li class="page-item active">
                                <a href="#" class="page-link ">1</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">2</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">3</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">4</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">5</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">6</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">7</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">8</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">9</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">10</a></li>
                            <li class="page-item">
                                <a href="#" class="page-link">다음</a></li>

                        </ul>
                    </nav>
                </div>
            </div>





        </div>


    <%@include file="../layout/footer.jsp" %>


    </div>


    <!--로그인 모달창-->
    <%@ include file="../layout/modal.jsp" %>





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
        $(function() {
            $('#joinbtn').on('click', function(e) {
                location.href = '<%=baseurl %>/join/agree';
            });
        });
    </script>

    <!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->
    <script>
        $(function() {
            $('#checkbtn').on('click', function(e) {
                location.href = '<%=baseurl %>/join/checkme2';
            });
        });
    </script>
    
    <!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->
    <script>
        $(function() {
            $('#newbtn').on('click', function(e) {
                location.href = '<%=baseurl %>/board/write';
            });
        });
    </script>

</body></html>