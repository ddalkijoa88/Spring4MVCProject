<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="http://use.fontawesome.com/2350369b5c.js"></script>
    <title>부트스트랩4 - modify</title>


</head>

<body>

    <div class="container">
        <%@ include file="../layout/header.jsp" %>


        <div id="main" style=" margin: 20px 0;">
            <div><i class="fa fa-comments fa-2x"> 자유게시판</i></div>
            <div class="row" style="margin: 10px 30px 20px 50px">
                <div class="col-6">
                    <h4><i class="fa fa-pencil-square-o"></i> 수정하기</h4>
                    
                </div>
                <div class="col-6 text-right">
                    <button type="button" class="btn btn-light" id="listbtn"><i class="fa fa-list"></i> 목록으로</button>
                </div>
            </div>
            
            <!--새글쓰기-->
            <div class="row" style="margin: 10px 30px 20px 50px">
                <form class="card card-body bg-light">
                    <div class="form-group row">
                        <div class="col-1"></div>
                        <label class="col-form-label col-2 text-right" for="title">제목</label>
                        <input type="text" id="title" class="form-control col" value="'6연승 도전' GS칼텍스 vs '5연패 탈출' IBK기업은행">
                        <div class="col-1"></div>
                    </div>
                    <div class="form-group row">
                        <div class="col-1"></div>
                        <label class="col-form-label col-2 text-right" for="title">본문내용</label>
                        <textarea rows="15" type="text"  class="form-control col">[스포츠타임스=홍성욱 기자] IBK기업은행과 GS칼텍스가 2라운드 맞대결을 펼친다.

두 팀은 14일 오후 7시 화성종합경기타운 실내체육관에서 경기를 시작한다.

홈코트의 IBK기업은행은 현재 1승 5패 승점 2점으로 최하위에 머물러 있다. 개막 이후 첫 상대 KGC인삼공사에 3-2로 승리한 이후 5연패를 당하는 동안 승점을 추가하지 못한 상황. 오늘 경기를 통해 연패 탈출과 최하위 탈출을 동시에 노리는 IBK기업은행이다.

원정팀 GS칼텍스는 1라운드에서 5연승을 내달리며 선두를 질주하고 있다. 따낼 수 있는 최대 승점 15점을 손에 넣었다는 점도 고무적이다. 2위 현대건설과 3위 흥국생명이 2라운드 두 경기씩을 치른 상황에서도 선두를 빼앗지 못한 점은 간극을 실감하게 한다. GS는 오늘 경기를 통해 6연승과 승점 3점을 동시에 노린다.

지난 10월 30일 열린 두 팀의 1라운드 맞대결에서는 GS가 3-0 완승을 거뒀다. GS는 강소휘가 20점, 러츠가 19점, 이소영이 10점을 올렸다. 김유리와 한수지는 각 5점씩을 거들었다. 반면 IBK는 어나이가 17점을 올렸을 뿐 나머지 선수들이 득점 대열에 가세하지 못했다. 김수지가 6점, 표승주가 6점, 김희진이 3점, 김주향과 문지윤이 각 2점에 그쳤다.

IBK기업은행은 지난 10일 열린 흥국생명과의 2라운드 첫 경기에서 포지션 변화를 줬다. 레프트 표승주의 부상으로 그 자리에 신인 육서영을 선발로 출전시켰고, 김희진을 센터로 돌리며 라이트에는 문지윤을 투입했다.

하지만 큰 성과는 없었다. 육서영은 서브 폭탄에 흔들렸고, 문지윤도 4점에 그쳤다. 센터로 이동한 김희진은 2세트까지 1점을 기록한 뒤, 3세트에는 변지수와 교체 됐다. 어나이는 11점에 그쳤다.

IBK는 우선 리시브 라인 불안이 해소되지 않고 있다. 박상미 리베로가 나서며 분전하고 있지만 흔들리는 모습도 보인다. 특유의 파이팅 넘치는 플레이가 이어져야 한다.

오늘 경기에서도 레프트 한 자리에 대한 김우재 감독의 고민은 이어질 것으로 보인다. 지난 경기에서 김주향이 1세트 교체 투입 후 공격에서 12점으로 팀 최다득점을 올린 부분은 고무적이다. 김주향이 리시브만 버텨준다면 가장 적합한 옵션이 될 수 있다. 백목화에 대한 레프트 활용 가능성도 남아 있다.

다시 센터로 나선 김희진이 어떤 활약을 보일지도 체크포인트다. 또한 이나연 세터의 활약도 중요하다. 리시브가 흔들리면 세터는 어려움에 직면한다. 역할 또한 제한적이다. 이나연은 뛰어다니며 공을 올리고 있고, 2단볼 처리도 많다. 약속된 플레이를 할 수 없다는 점, 상대 블로킹을 따돌릴 틈이 없다는 점도 이해가 간다. 단, 어느 정도 올라온 볼에 대해서는 낮고 빠른 토스로 공격수들이 해결할 수 있게 도와줘야 한다. 오늘 이나연의 토스 또한 체크포인트다.

GS칼텍스는 이번 시즌 모든 것이 잘 풀리고 있다. 206cm 러츠의 고공 강타가 빛나고 있고, 한수지가 옆에서 블로킹 시너지 효과를 내고 있다. 레프트 강소휘는 1라운드 MVP로 뽑혔고, 이소영의 공수 활약도 빼놓을 수 없다. 한다혜 리베로가 버텨주는 가운데 이고은 세터와 안혜진 세터가 교체로 투입되며 활약하고 있다.

GS의 연승가도가 언제까지 이어질 것인지도 이번 시즌을 지켜보는 재미 가운데 하나다. GS는 지난 6일 현대건설전 3-1 승리 이후 8일 만에 경기에 나선다. 체력적으로는 문제가 없지만 경기 감각을 빨리 찾는 점이 중요하다.

오늘 경기는 연승 팀과 연패 팀의 경기, 선두와 최하위의 경기다. GS는 1라운드 분위기를 이어가는 것이 중요하고 연승에 대한 부담감을 내려놓는 것이 필요하다. 가벼운 마음으로 경기에 나선다면 무리 없이 페이스를 이어갈 수 있을 전망. 쉬운 승리는 없다는 사실 또한 기억해야 한다.

반대로 IBK기업은행은 절심함이 필요하다. 승리에 대한 절실함이 오늘 화성 코트를 수놓는다면 결과는 예단할 수 없을 것이다. 여자배구는 어지간한 볼은 수비로 잡아낼 수 있다. 연속득점도 빈번하게 나온다. 절심함과 절박함으로 무장한다면 경기는 접전으로 흐를 수도 있다.

경기는 오후 7시에 시작된다. 중계방송은 KBSN스포츠와 네이버스포츠를 통해 이뤄진다.

홍성욱 기자 mark@thesportstimes.co.kr

저작권자 ⓒ 스포츠타임스, 무단 전재 및 재배포 금지</textarea>
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
                        <button type="button" class="btn btn-primary" id="updatebtn"><i class="fa fa-check"></i> 수정완료</button>
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
                location.href = 'checkme2.html';
            });
        });
    </script>
    
    <!--회원가입의 확인하기 버튼을 누르면 일어나는 행동    -->
    <script>
        $(function() {
            $('#newbtn').on('click', function(e) {
                location.href = 'write.jsp';
            });
        });
    </script>
        <script>
        $(function() {
            $('#listbtn').on('click', function(e) {
                location.href = 'list.jsp';
            });
        });
    </script>
        <script>
        $(function() {
            $('#canclebtn').on('click', function(e) {
                location.href = 'list.jsp';
            });
        });
    </script>
           


</body></html>