<%--
  Created by IntelliJ IDEA.
  User: anton
  Date: 21.04.2020
  Time: 04:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>end</title>
    <style> body { background: url("https://cdn1.savepice.ru/uploads/2020/4/20/dd64d63f4cb20159271869d44fb48e1d-full.jpg"); }</style>
    <style type="text/css">
        button.new {
            background: -moz-linear-gradient(#00BBD6, #EBFFFF);
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#00BBD6), to(#EBFFFF));
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00BBD6', endColorstr='#EBFFFF');
            padding: 7px 12px;
            color: #333;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            border: 1px solid #666;
        }
        input.inp{
            background: -moz-linear-gradient(#00BBD6, #EBFFFF);
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#00BBD6), to(#EBFFFF));
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00BBD6', endColorstr='#EBFFFF');
            padding: 7px 12px;
            color: #333;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            border: 1px solid #666;
        }
    </style>
    <%@ page import="com.gmail.docfordja.DownloadServlet" %>
    <%@ page import="com.gmail.docfordja.Servlet" %>
</head>
<body>
<p><center><font size="10" color="#f0ffff" face="MV BOLI">Always welcome!</font></center></p>
<p><font size="5" color="#f0ffff" face="MV BOLI">Now you can</font></p>
<p><font size="5" color="#f0ffff" face="MV BOLI">download your files</font></p>
<p><font size="5" color="#f0ffff" face="MV BOLI">or save links to them</font></p>
<p><font size="5" color="#f0ffff" face="MV BOLI">and download your files later.</font></p>
<%Servlet servlet = new Servlet();%>
<%for (String key : servlet.getKeys(session.getId())){%>
<%out.print("<p><font size=\"2\" color=\"#f0ffff\" face=\"MV BOLI\"><form action =\"" + key + " \" method = \"post\"> <button class=\"new\" type = \"submit\">"+
        key.substring(key.indexOf('.') + 1)+
        "</button></form>" + key + "</font> </p>");}%>
</body>
</html>
