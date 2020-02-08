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


    <div id="main" style=" margin: 20px 0;" >
            <div><i class="fa fa-users fa-2x" >회원가입</i></div>
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
                <small class="text-muted">회원으로 가입하는 방법에는 2가지 방법이 있습니다. 아래에서 원하는 방법을 선택해주세요<br>
                    입력하신 정보는 가입완료 전까지 본 사이트에 저장되지 않습니다
                </small>
            </div>
            <div class="card card-body bg-light" style="margin:30px 30px 0 50px">
                <h4 style="padding-bottom:15px">회원가입</h4>
                <form>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-5" >
                           <div class="form-group row">
                               <label for="name" class="col-4 col-form-label text-right"> <!--col-form-label은 상하에서 중간정렬-->
                                   이름
                               </label>
                               <input type="text" id="name" class="form-control col-6">
                           </div>
                            <div class="form-group row">
                                <label for="byear" class="col-4 col-form-label text-right">
                                    생년월일
                                </label>
                                <select id="byear" class="form-control col-3" ><option>년도</option><option>2019</option><option>2018</option><option>2017</option><option>2016</option></select>
                                <select id="bmonth" class="form-control col-2" style="margin: 0 5px;"><option>월</option><option>1</option><option>2</option><option>3</option><option>4</option></select>
                                <select id="bday" class="form-control col-2"><option>일</option><option>1</option><option>2</option><option>3</option><option>4</option></select>
                            </div>
                            <div class="form-group row">
                                <label for="male" class="col-4 col-form-label text-right">
                                    성별
                                </label>
                                <div class="form-check form-check-inline">
                                    <input type="radio" id="male" name="gender" class="form-check-input" value="m" >
                                    <label for="male" class="form-check-label">남자</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" id="female" name="gender" class="form-check-input" value="f" >
                                    <label for="female" class="form-check-label">여자</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <ul>
                                <li><span style="font-weight: bold;">주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다.</span></li>
                                <li><span style="font-weight: bold;">이름, 생년월일과 성별은</span> <span style="color: red;">추후 변경할 수 없습니다.</span> </li>
                                <li><span style="color: red;">휴대폰 가입인증</span><span style="font-weight: bold;">을 하셔야 공개 게시판 이용이 가능합니다.</span></li>
                            </ul>
                        </div>
                        <div class="col-md-1"></div>
                    </div>

                    <hr>
                    <div class="row justify-content-center" >
                        <button type="button" class="btn btn-primary" style="margin:0 10px" id="checkbtn"><i class="fa fa-check"> 확인하기</i></button>
                        <button type="button" class="btn btn-danger"><i class="fa fa-remove"> 취소하기</i></button>

                    </div>
                </form>
            </div>

            <div class="card card-body bg-light" style="margin:30px 30px 10px 50px">
                <h4 style="padding-bottom:15px">실명확인 회원가입</h4>
                <form>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-5" style="margin-top:30px;">
                            <div class="form-group row">
                                <label for="name2" class="col-4 col-form-label text-right"> <!--col-form-label은 상하에서 중간정렬-->
                                    이름
                                </label>
                                <input type="text" id="name2" class="form-control col-6">
                            </div>
                            <div class="form-group row">
                                <label for="jumin1" class="col-4 col-form-label text-right">
                                    주민번호
                                </label>
                                <input type="text" id="jumin1" class="form-control col-3">
                                <label class="col-form-label">&nbsp;&mdash;&nbsp;</label> <!--col-form-label 속성을 사용하면 상하위치 중 가운데로 놓을 수 있다-->
                                <input type="text" id="jumin2" class="form-control col-3">


                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-4"></label>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" id="usejm" name="usejm" class="custom-control-input">
                                    <label for="usejm" class="custom-control-label">주민등록번호 처리에 동의합니다</label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <ul>
                                <li><span style="font-weight: bold;">실명확인 회원가입시 공개 게시판 이용이 가능합니다.</span></li>
                                <li><span style="font-weight: bold;">타인의 주민등록번호를 임의로 사용하면</span> <span style="color: red;">'주민등록법'에 의해 3년 이하의 징역 또는 1천만원 이하의 벌금</span><span style="font-weight: bold;">이 부과될 수 있습니다</span> </li>
                                <li><span style="font-weight: bold;">입력하신 주민등록번호는</span><span style="color: red;">별도 저장되지 않으며, 신용평가기관을 통한 실명확인용</span><span style="font-weight: bold;">으로만 이용됩니다.</span></li>
                                <li><span style="font-weight: bold;">개인정보보호법에 따라 </span><span style="color: red;">이용 동의</span><span style="font-weight: bold;">를 받습니다.</span></li>
                            </ul>
                        </div>
                        <div class="col-md-1"></div>
                    </div>

                    <hr>
                    <div class="row justify-content-center" >
                        <button type="button" class="btn btn-primary" style="margin:0 10px"><i class="fa fa-check"> 확인하기</i></button>
                        <button type="button" class="btn btn-danger"><i class="fa fa-remove"> 취소하기</i></button>

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
<script src="../../js/loginfrm.js"></script>


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
        $('#joinbtn').on('click', function(e){location.href='agree';});
    });
</script>
    
<!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->
<script>
    $(function(){
        $('#checkbtn').on('click', function(e){location.href='checkme2';});
    });
</script>

</body>
</html>