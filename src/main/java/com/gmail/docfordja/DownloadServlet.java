package com.gmail.docfordja;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * Created by anton on 21.04.2020.
 */
@WebServlet(name = "DownloadServlet")
public class DownloadServlet extends HttpServlet {
    private final String PATH = "http://localhost:8070/down?file=";
    private static Servlet servlet = new Servlet();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Part> data = servlet.getData();
        String name = request.getParameter("file");
       try( OutputStream fos = response.getOutputStream();ZipOutputStream zot = new ZipOutputStream(fos);
           InputStream fis = data.get(PATH + name).getInputStream()){
           ZipEntry zip = new ZipEntry(name.substring(name.indexOf('.') + 1));
           zot.putNextEntry(zip);
           byte[] bytes = new byte[1024];
           int length;
           while ((length = fis.read(bytes)) >= 0) {
               zot.write(bytes, 0, length);
           }
       }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
