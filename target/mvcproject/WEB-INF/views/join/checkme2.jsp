<%@ page pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4</title>

</head>

<body>

    <div class="container">
        <%@ include file="../layout/header.jsp" %>

        <div id="main" style=" margin: 20px 0;">
            <div><i class="fa fa-users fa-2x">회원가입</i></div>
            <nav aria-label="breadcrumb" style=" margin: 20px 0;">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active "><span class="badge badge-success" style="padding:8px">이용약관</span></li>
                    <li class="breadcrumb-item active"><span class="badge badge-success" style="padding:8px">실명확인</span></li>
                    <li class="breadcrumb-item "><span class="badge badge-light" style="padding:8px">정보입력</span></li>
                    <li class="breadcrumb-item "><span class="badge badge-light" style="padding:8px">가입완료</span></li>

                </ul>
            </nav>

            <div style="margin: 60px 0 10px 0;">
                <h2>가입인증</h2>
                <small class="text-muted">안전한 회원 가입을 위해 휴대폰 인증을 진행해 주세요</small>
            </div>

            <div class="alert alert-danger" role="alert" style="margin: 10px 30px 20px 50px;">
                <ul style="margin:0 0 -5px -15px">
                    <li style="list-style: none; margin:-10px 0 0 -20px"><span class="badge badge-danger">중요한 내용!</span></li>
                    <li>극소수 익명 사용자의 대량가입으로 인한 피해를 방지하기 위하여 가입인증을 시행하고 있습니다.</li>
                    <li>통신사의 사정으로 휴대폰 인증을 위한 메시지가 지연 발송될수도 있습니다.</li>
                </ul>

            </div>



            <div class="card card-body bg-light" style="margin:10px 30px 20px 50px">
                <h3><span class="badge badge-pill badge-danger">1</span> 휴대폰 정보</h3>
                <form>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5" style="margin-top: 20px">
                            <div class="form-group row">
                                <label for="hp1" class="col-4 col-form-label">휴대폰 번호</label>
                                <select id="hp1" class="col-3 form-control">
                                    <option>국번</option>
                                    <option>010</option>
                                    <option>02</option>
                                    <option>054</option>
                                </select>
                                <label class="col-form-label">&nbsp;-&nbsp;</label>
                                <input type="text" name="hp2" class="form-control col-2">
                                <label class="col-form-label">&nbsp;-&nbsp;</label>
                                <input type="text" name="hp3" class="form-control col-2">
                            </div>
                        </div>
                        <div class="col-5">
                            <ul>
                                <li><span style="font-weight: bold">메시지 수신 가능한 휴대폰으로 인증번호를 받을 수 있습니다</span></li>
                                <li><span style="font-weight: bold">휴대폰번호 입력 후 '인증번호 요청하기' 버튼을 눌러주세요</span></li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <button type="button" class="btn btn-warning">
                                <i class="fa fa-check"></i> 인증번호 요청하기
                            </button>
                        </div>
                    </div>
                </form>


            </div>




            <div class="card card-body bg-light" style="margin:10px 30px 20px 50px">
                <h3><span class="badge badge-pill badge-danger">2</span> 휴대폰 가입인증</h3>
                <form>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5" style="margin-top:70px ">
                            <div class="form-group row">
                                <label for="vcode" class="col-4 col-form-label">인증번호 입력</label>
                                <input type="text" id="vcode" class="form-control col-3">
                            </div>
                        </div>
                        <div class="col-5">
                            <ul>
                                <li>휴대폰으로 받은 인증번호 입력 후 확인을 눌러주세요</li>
                                <li>인증번호가 도착하지 않는다면 재인증을 시도해 주십시오</li>
                                <li>재인증 실패시 통신사에 문의하시기 바랍니다</li>
                                <li>통신사 문의 전 스팸문자함, 메시지함 용량 초과 여부, 차단 설정을 확인해 주십시오</li>

                            </ul>
                        </div>
                        <div class="col"></div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <button type="button" class="btn btn-primary" id="vcodebtn"><i class="fa fa-check"></i> 입력완료</button>
                            <button type="button" class="btn btn-danger"><i class="fa fa-remove"></i> 취소하기</button>

                        </div>
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
                location.href = 'agree';
            });
        });
    </script>
      
<!--입력완료(vcodebtn)을 클릭하면 일어나는 행동-->
    <script>
        $(function() {
            $('#vcodebtn').on('click', function(e) {
                location.href = 'joinmember';
            });
        });
    </script>
    

</body></html>