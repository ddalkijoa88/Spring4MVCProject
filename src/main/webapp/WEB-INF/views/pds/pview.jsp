<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="newChar" scope="page" value="
" />

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 - view</title>


</head>

<body>

    <div class="container">
        <%@ include file="../layout/header.jsp" %>


        <div id="main" style=" margin: 20px 0;">
            <div><i class="fa fa-comments fa-2x"> 자료실</i></div>
            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col-6">
                    <button type="button" class="btn btn-light" id="prevbtn"><i class="fa fa-chevron-left"></i> 이전게시물</button>
                    <button type="button" class="btn btn-light" id="nextbtn">다음게시물 <i class="fa fa-chevron-right"></i></button>
                </div>
                <div class="col-6 text-right">
                    <button type="button" class="btn btn-light" id="newbtn"><i class="fa fa-plus-circle"></i> 새글쓰기</button>
                </div>
            </div>
            
            <!--게시판 본문-->
            <div class="row" style="margin: 10px 30px 20px 50px">
                <table class="table">
                    <tr><th colspan="2" style="background-color: #dff0d8; border-bottom: 2px solid black" class="text-center"><h3>${p.subject}</h3></th></tr>
                    <tr style="background-color: #dff0d8;"><td>${p.writer}</td><td class="text-right">${p.regdate} / ${p.views}</td></tr>
                    <tr><td colspan="2" style="border-bottom: 2px solid black">${fn:replace(p.contents, newChar ,"<br>" )}</td></tr>
                    <tr><td colspan="2" ><span style="font-size: 12px;">첨부파일 1: <a href="pdown?f=${p.file1}">${p.file1}</a>(다운횟수: 123, 크기: 1.5MB)</span></td></tr>
                </table>
            </div>
            
            <!--버튼-->
            <div class="row" style="margin: 10px 30px 20px 50px">
            <div class="col-6">
                <button type="button" class="btn btn-warning" id="updatebtn"><i class="fa fa-pencil"></i> 수정하기</button>
                <button type="button" class="btn btn-danger" id="deletebtn"><i class="fa fa-trash-o"></i> 삭제하기</button>
            </div>
            <div class="col-6 text-right">
                <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
            </div>
            </div>
            
            <!--댓글-->
            <div class="row" style="margin: 100px 30px 20px 50px">
                <h3><i class="fa fa-commenting"></i> 나도 한마디</h3>
                <table class="table" style="border-bottom: 2px solid black; border-top: 2px solid black;">
                <tr>
                    <td style="width: 25%">
                        <h4>min</h4>
                    </td>
                    <td>
                    <div style="background-color: yellow; padding:5px">2019-11-14 11:56:30</div>
                    <p style="padding:5px">기업이 1세트라도 따면 성공이라고 생각한다...<br> 무난히 기름 승 예상</p>
                        <ul style="list-style: none; margin-left: -40px">
                            <li><div style="background-color: lime; height: 30px; padding:3px">
                                <span style="font-weight: bold">min</span>
                                <span style="float: right">2019-11-14 12:04:13</span>
                                </div>
                                <p style="padding:5px">걍 3대0 예상이지ㅋㅋ 지금 기은 분위기에 1세트나 따겠냐ㅋㅋ</p>
                            </li>
                        </ul>
                    </td></tr>
                    <tr>
                    <td style="width: 25%">
                        <h4>min</h4>
                    </td>
                    <td>
                    <div style="background-color: yellow; padding:5px">2019-11-14 11:56:30</div>
                    <p style="padding:5px">기름이 이긴다에 참기름 셋세트 건다
                    </td></tr>
                    <tr>
                    <td style="width: 25%">
                        <h4>min</h4>
                    </td>
                    <td>
                    <div style="background-color: yellow; padding:5px">2019-11-14 11:56:30</div>
                    <p style="padding:5px">이건 승점자판기 꿀꺽 감사함니당도 아니고 참....</p>
                        <ul style="list-style: none; margin-left: -40px">
                            <li><div style="background-color: lime; height: 30px; padding:3px">
                                <span style="font-weight: bold">min</span>
                                <span style="float: right">2019-11-14 12:04:13</span>
                                </div>
                                <p style="padding:5px">몸에 좋은 통장보약ㅋ</p>
                            </li>
                        </ul>
                    </td></tr>
                    <tr>
                    <td style="width: 25%">
                        <h4>min</h4>
                    </td>
                    <td>
                    <div style="background-color: yellow; padding:5px">2019-11-14 11:56:30</div>
                    <p style="padding:5px">여배의 속사포랩퍼 MC가가멜 불러오면 5연패 탈출가능ㅋㅋㅋ</p>
                    </td></tr>
                    <tr>
                    <td style="width: 25%">
                        <h4>min</h4>
                    </td>
                    <td>
                    <div style="background-color: yellow; padding:5px">2019-11-14 11:56:30</div>
                    <p style="padding:5px">안봐도 6연승, 6연패 확정이네 ㅎㅎㅎ</p>
                    </td></tr>
                
                </table>
            
            
            
            </div>
            
            <div class="row" style="margin: 10px 30px 20px 50px">
                <form class="card card-body bg-light">
                    <div class="form-group row">
                        <label style="margin: auto">로그인하세요</label>
                        <textarea rows="10" id="comment" class="form-control col-7" style="margin-bottom: -15px"></textarea>
                        <button type="button" id="cmtbtn" class="btn btn-dark" style="margin: auto"><i class="fa fa-commenting"></i> 댓글쓰기</button>
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
                location.href = 'agree.html';
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
                location.href = '<%=baseurl %>/pds/pwrite';
            });
        });
    </script>
        <script>
        $(function() {
            $('#listbtn').on('click', function(e) {
                location.href = '<%=baseurl %>/pds/plist';
            });
        });
    </script>
        <script>
        $(function() {
            $('#updatebtn').on('click', function(e) {
                location.href = '<%=baseurl %>/pds/pmodify';
            });
        });
    </script>
           <script>
        $(function() {
            $('#deletebtn').on('click', function(e) {
                if (confirm("정말로 삭제하시겠습니까?"))
                    alert('삭제되었습니다!');
            });
        });
    </script>


</body></html>