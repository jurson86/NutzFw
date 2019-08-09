<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page import="org.apache.shiro.subject.Subject" %>
<%@ page import="org.nutz.integration.shiro.NutShiro" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Subject subject = SecurityUtils.getSubject();
    if (subject.isAuthenticated()) {
        subject.logout();
    }
    response.sendRedirect(request.getContextPath() + NutShiro.DefaultLoginURL);
%>
