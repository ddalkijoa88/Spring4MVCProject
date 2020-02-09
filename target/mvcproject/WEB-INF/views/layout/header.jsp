<%@ page pageEncoding="utf-8" %>
<%--절대경로 설정--%>
<% String baseurl = ""; %>
<%--로그인 여부 확인--%>
<%
    boolean isLogin = false;

    if(session.getAttribute("smb") != null){
        isLogin = true;
    }
%>

<header>
    <div class="row"><!--상단-->
        <div class="col-md">
            <h1><a href="<%=baseurl %>/index.jsp" style="color: #000000;">Lorem Ipsum</a></h1>
        </div>
        <div class="col-md text-right" style="margin:10px 0;">
            <% if(!isLogin){ //로그인을 하지 않았다면 %>
            <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#loginmodal">로그인</button>
            <button class="btn btn-primary" type="button" id="joinbtn">회원가입</button>
            <% } else{ %>
            <button class="btn btn-dark" type="button" id="logoutbtn">로그아웃</button>
            <% } %>
        </div>
    </div>
    <nav class="nav navbar-expand-md navbar-dark bg-dark">
        <ul class="nav navbar-nav nav-fill w-100"> <!--nav-fill w-100속성을 쓰면 칸에 꽉맞으면서 일정한 간격을 가지게됨-->
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/intro"> 프로젝트소개</a></li>
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/join/agree"> 회원가입</a></li>
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/board/list"> 게시판</a></li>
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/pds/plist"> 자료실</a></li>
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/galary/glist"> 갤러리</a></li>
            <li class="nav-item"><a class="nav-link" href="<%=baseurl %>/admin"> 관리자</a></li>

        </ul>
    </nav>

<%--    <script src="/resources/js/loginfrm.js"></script>--%>
</header>

<%--    <script src="/resources/js/loginfrm.js"></script>--%>
<%--    <script>--%>
<%--    $(function() {--%>
<%--    $('#logoutbtn').on('click',--%>
<%--    function(e) {gologout();});--%>
<%--    });--%>
<%--    </script>--%>

