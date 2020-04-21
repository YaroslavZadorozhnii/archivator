package com.gmail.docfordja;

import sun.security.pkcs11.wrapper.Constants;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import static jdk.nashorn.internal.objects.NativeError.getFileName;



/**
 * Created by anton on 20.04.2020.
 */
@MultipartConfig(location = "C:\\Users\\anton\\Desktop\\Download",
        fileSizeThreshold = Integer.MAX_VALUE)
public class Servlet extends HttpServlet {
    private static Map<String, Part> data = new HashMap<>();
    private final String PATH = "http://localhost:8070/down";

    public Map getData(){
        return data;
    }

    public String[] getKeys(String sessionId){
        int num = 0;
        String[] array = new String[data.keySet().size()];
        for(String key : data.keySet()){
            String maket = key.substring(key.indexOf('=') + 1, key.indexOf('@'));
            if(sessionId.equals(maket)){
                array[num] = key;
                num++;
            }
        }
        String[] result = new String[num];
        for (int i = 0 ; i < result.length ; i++){
            result[i] = array[i];
        }
        return result;
    }

    protected synchronized void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Date date = new Date();
        HttpSession session = request.getSession();
            int number = 0;
            for (Part part : request.getParts()) {
                if(getFileName(part).length() > 1 ) {
                    data.put(PATH + "?file=" + session.getId() + "@" + date.getTime() + number + "." + getFileName(part), part);
                    number++;
                }
            }
        String path = "/dow";
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);







}
    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                content = content.substring(content.indexOf("=") + 2, content.length() - 1);
                content = content.replace('\\',';');
                String[] result = content.split(";");
                return result[result.length - 1];
            }
        }
        return "null";
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
