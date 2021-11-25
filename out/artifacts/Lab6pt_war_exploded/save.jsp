<%--
  Created by IntelliJ IDEA.
  User: Durraiz
  Date: 25/11/2021
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.PrintWriter" %><!--Directives example-->
<%@page import="DB.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%

    String user = request.getParameter("name");
    String father = request.getParameter("father");
    String reg = request.getParameter("reg");
    PrintWriter pw=response.getWriter();
    DbConnection db= new DbConnection();
   db.insertRecord(user,father,reg);
    ResultSet rs =db.getRecords();
    int id;String n,u,r;
    pw.write("<html>\n" +
            "<head>\n" +
            " <title></title>\n" +
            "</head>\n" +
            "<body><br>");
    while (rs.next()) {
        id=rs.getInt("id");
        n=rs.getString("name");
        u=rs.getString("fathername");
        r=rs.getString("regno");
        pw.write(id + "<br>" +
                "Student name is : " + n + "<br>" +
                "Father name is : " + u + "<br>" +
                "Registration number is : " + r + "<br>"
               );
    }
    pw.write( "</body>\n" +
            "</html>");
%>
