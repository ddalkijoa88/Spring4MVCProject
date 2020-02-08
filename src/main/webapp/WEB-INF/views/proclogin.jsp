<%@ page import="min.mvcproject.vo.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="mbf" class="min.mvcproject.dao.MemberFactory" scope="session" />

<%
    String uid = request.getParameter("userid");
    String pwd = request.getParameter("passwd");
    String goPage = "loginfail.jsp";

    String isPwd = mbf.getPwdByUid(uid);

    if(isPwd!=null && isPwd.equals(pwd)) {
        //로그인 성공
        //객체 형태로 세션을 만들면 코드를 간단하게 줄일 수 있음
        Member smb = mbf.getMemberById(uid);  //id에 해당하는 모든 정보를 가져옴
        session.setAttribute("smb", smb);
        goPage = "index.jsp";
    }
    response.sendRedirect(goPage);

%>