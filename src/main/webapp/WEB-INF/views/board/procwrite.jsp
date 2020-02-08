<%@ page import="java.util.Random" %>
<%@ page import="min.mvcproject.service.Today" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="bdf" class="min.mvcproject.dao.BoardFactory" scope="session" />

<jsp:useBean id="bd" class="min.mvcproject.vo.Board" />
<% request.setCharacterEncoding("utf-8"); %>

<jsp:setProperty name="bd" property="*" />

<%--글번호, 작성자, 작성일은 직접 작성--%>
<% Random rnd = new Random();
    int bdid = rnd.nextInt(100)+500;
    bd.setBdid(bdid+"");
%>

<% Today today = new Today();
    String regdate = today.getDate()+" "+today.getTime2();
    bd.setRegdate(regdate);
%>

<% bd.setWriter("mino"); %>


<%--<jsp:setProperty name="bd" property="subject" />--%>
<%--<jsp:setProperty name="bd" property="contents" />--%>
<%--<jsp:setProperty name="bd" property="writer" value="22"/>--%>
<%--<jsp:setProperty name="bd" property="regdate" value="2019-11-27"/>--%>
<%--<jsp:setProperty name="bd" property="thumbs" value="0"/>--%>
<%--<jsp:setProperty name="bd" property="views" value="0"/>--%>


<% bdf.addBoard(bd); %>

<% response.sendRedirect("list.jsp"); %>



<%--<html>--%>
<%--<head>--%>
    <%--<title></title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%for(Board b : bdf.getAllBoards()){%>--%>
<%--<ul>--%>
    <%--<li>글번호: <%=b.getBdid()%></li>--%>
    <%--<li>제목: <%=b.getSubject()%></li>--%>
    <%--<li>작성자: <%=b.getWriter()%></li>--%>
    <%--<li>작성일: <%=b.getRegdate()%></li>--%>
    <%--<li>추천수: <%=b.getThumbs()%></li>--%>
    <%--<li>조회수: <%=b.getViews()%></li>--%>
    <%--<li>본문내용: <%=b.getContents()%></li>--%>
<%--</ul>--%>
<%--<%}%>--%>

<%--</body>--%>
<%--</html>--%>
