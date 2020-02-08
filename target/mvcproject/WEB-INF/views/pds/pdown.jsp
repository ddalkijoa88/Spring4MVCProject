<%@ page import="min.mvcproject.service.FileUpDownUtil" %>
<%--이미지 게시판에서 첨부파일 다운 받을 때--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String dPath = "c:/java/pdsupload/";
    FileUpDownUtil.procDownload(request, response, dPath);
%>
