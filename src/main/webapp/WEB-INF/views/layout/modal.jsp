<%@ page pageEncoding="UTF-8" %>

<div id="loginmodal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">닫기</button> <!--data-dismiss="modal"을 하면 모달창이 닫김-->
            </div>
            <div class="modal-body">
                <form id="loginfrm" name="loginfrm" method="post">
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

    <script src="/resources/js/loginfrm.js"></script>
    <script>
    $(function() {
    $('#loginbtn').on('click',
    function(e) {loginfrm();});
    });
    </script>