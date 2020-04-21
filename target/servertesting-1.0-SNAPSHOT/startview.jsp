<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: anton
  Date: 20.04.2020
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start view</title>
    <style> body { background: url("https://cdn1.savepice.ru/uploads/2020/4/20/dd64d63f4cb20159271869d44fb48e1d-full.jpg"); }</style>
    <style type="text/css">
        button.new {
            background: -moz-linear-gradient(#00BBD6, #EBFFFF);
            background: -webkit-gradient(linear, 0 0, 0 100%, from(#00BBD6), to(#EBFFFF));
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00BBD6', endColorstr='#EBFFFF');
            padding: 4px 8px;
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
            padding: 4px 8px;
            color: #333;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            border: 1px solid #666;
        }
    </style>
</head>
<body>
<center><h1><font size="8" color="#f0ffff" face="MV BOLI">Hello, Frend!</font></h1></center>
<h1><font size="3" color="#f0ffff" face="MV BOLI">Do you like to download files on our server?</font></h1>
<h1><font size="3" color="#f0ffff" face="MV BOLI">Maybe you want to upload your files?</font></h1>
<h1><font size="3" color="#f0ffff" face="MV BOLI">Fill out this form and the file will be downloaded!</font></h1>
<h1><font size="3" color="#f0ffff" face="MV BOLI">Oll this very simple.</font></h1>
<p><font size="4" color="#f0ffff" face="MV BOLI"> Your files directory</font></p>
<form action = "/upload" method = "post" enctype = "multipart/form-data">
        <p><input class="inp" type = "file" name = "file1" size = "40" /></p>
        <p><input class="inp" type = "file" name = "file2" size = "40" /></p>
        <p><input class="inp" type = "file" name = "file3" size = "40" /></p>
        <p><input class="inp" type = "file" name = "file4" size = "40" /></p>
        <p><input class="inp" type = "file" name = "file5" size = "40" /></p>
    <button class="new" type = "submit" value = "Upload File">Upload it</button>
</form>


</body>
</html>
