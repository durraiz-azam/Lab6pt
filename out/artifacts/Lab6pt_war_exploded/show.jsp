<%--
  Created by IntelliJ IDEA.
  User: Durraiz
  Date: 25/11/2021
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.PrintWriter" %><!--Directives example-->
<%
    String user = request.getParameter("name");
    String father = request.getParameter("father");
    String reg = request.getParameter("reg");
    PrintWriter pw=response.getWriter();
    pw.write("<html>\n" +
            "<head>\n" +
            " <title></title>\n" +
            "</head>\n" +
            "<body><br>" +
            "Student name is : "+user+"<br>"+
            "Father name is : "+father+"<br>"+
            "Registration number is : "+reg+"<br>"+
            "</body>\n" +
            "</html>");
%>
