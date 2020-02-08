<%@ page contentType="image/png" %>
<%@ page import="min.mvcproject.service.CaptchaUtil" %>
<%
    CaptchaUtil.getCaptcha(request, response);
%>

