<%@ page import="java.util.Random" %>
<%@ page import="min.mvcproject.service.Today" %>
<%@ page import="min.mvcproject.service.FileUpDownUtil" %>
<%@ page import="java.util.Map" %>
<%@ page import="min.mvcproject.vo.Pds" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="pdsf" class="min.mvcproject.dao.PdsFactory" scope="session" />

<jsp:useBean id="pds" class="min.mvcproject.vo.Pds" />
<% request.setCharacterEncoding("utf-8"); %>


<%--<jsp:setProperty name="pds" property="*" />--%>

<%--글번호, 작성자, 작성일은 직접 작성--%>
<% Random rnd = new Random();
int bdid = rnd.nextInt(100)+500;
pds.setBdid(bdid+"");
%>

<% Today today = new Today();
String regdate = today.getDate()+" "+today.getTime2();
pds.setRegdate(regdate);
%>

<% pds.setWriter("mino"); %>






<%--업로드 처리--%>
<% String uPath = "c:/java/pdsupload/"; %>
<% Map<String, String> frmdata = FileUpDownUtil.procUpload(request,uPath); %>

<%
    //폼에서 수집된 데이터의 키 : 값 형태로 출력 확인
//    for(Map.Entry<String, String> e: frmdata.entrySet()){
//        out.print("<p>"+e.getKey()+" : "+e.getValue()+"</p>");
//    }

    for(String key: frmdata.keySet()){
        String val = frmdata.get(key);
        switch (key){
            case "subject" : pds.setSubject(val); break;
            case "contents" : pds.setContents(val); break;
            case "file1" : pds.setFile1(val); break;
        }
    }

%>



<% pdsf.addPds(pds); %>
<% response.sendRedirect("plist.jsp"); %>




<%--업로드 처리하는 것 만들기--%>


<%--<jsp:setProperty name="bd" property="subject" />--%>
<%--<jsp:setProperty name="bd" property="contents" />--%>
<%--<jsp:setProperty name="bd" property="writer" value="22"/>--%>
<%--<jsp:setProperty name="bd" property="regdate" value="2019-11-27"/>--%>
<%--<jsp:setProperty name="bd" property="thumbs" value="0"/>--%>
<%--<jsp:setProperty name="bd" property="views" value="0"/>--%>







<html>
<head>
<title></title>
</head>
<body>
<%--<%for(Pds p  :pds){%>--%>
<ul>
<li>글번호: <%=pds.getBdid()%></li>
<li>제목: <%=pds.getSubject()%></li>
<li>작성자: <%=pds.getWriter()%></li>
<li>작성일: <%=pds.getRegdate()%></li>
<li>추천수: <%=pds.getThumbs()%></li>
<li>조회수: <%=pds.getViews()%></li>
<li>본문내용: <%=pds.getContents()%></li>
<li>본문내용: <%=pds.getFile1()%></li>
</ul>
<%--<%}%>--%>

</body>
</html>
