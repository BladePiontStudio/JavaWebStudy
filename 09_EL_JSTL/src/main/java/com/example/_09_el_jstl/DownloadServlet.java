package com.example._09_el_jstl;

import com.sun.jndi.toolkit.url.UrlUtil;
import org.apache.commons.io.IOUtils;
import sun.misc.BASE64Encoder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "DownloadServlet", value = "/DownloadServlet")
public class DownloadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取要下载的文件名
        String downloadFile = "god.jpg";

        //2.读取要下载的文件名
        ServletContext servletContext = request.getServletContext();
        //获取要下载的文件类型
        String mimeType = servletContext.getMimeType("upload/" + downloadFile);
        System.out.println("要下载的文件类型：" + mimeType);
        //3.把下载的文件内容返回给客户端
        response.setContentType(mimeType);
        //4.在回传前，通过响应头告诉客户端返回的类型
        //Content-Disposition响应头，表示收到的数据怎么处理
        //attachment表示附件，filename=表示指定下载的文件名
        //url编码是表示把汉字转化为url编码格式
        if (request.getHeader("User-Agent").contains("Firefox")) {
            //如果是火狐浏览器，使用base64编码
            // =?charset?B?xxxxx?=
            // =?   表示编码内容的开始
            // charset  表示字符集
            // B        表示BASE64编码
            // xxxx     表示文件名BASE64编码后的内容
            // ?=   表示编码内容的结束
            response.setHeader("Content-Disposition", "attachment; filename=?UTF-8?B?" + new BASE64Encoder().encode("狗狗.jpg".getBytes(StandardCharsets.UTF_8)) + "?=");
        } else {
            response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode("狗狗.jpg", String.valueOf(StandardCharsets.UTF_8)));
        }
        //5.告诉客户端收到的数据是用于下载的（使用响应头）
        // 读取输入流中的全部数据，复制输出流，输出给客户端
        InputStream inputStream = servletContext.getResourceAsStream("/upload/" + downloadFile);
        ServletOutputStream servletOutputStream = response.getOutputStream();
        System.out.println(IOUtils.copy(inputStream, servletOutputStream));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
