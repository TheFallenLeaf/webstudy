package cn.edu.cup.tanyao.webstudy.servlet;

import cn.edu.cup.tanyao.webstudy.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author tanyao
 * @date 2019/12/31
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.service(req, resp);
        //设置编码格式
        req.setCharacterEncoding("utf8");
        resp.setCharacterEncoding("utf8");
        //获取登陆信息
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        //处理请求信息
        LoginService loginService = new LoginService();
        String message = loginService.checkLogin(email, password);
        System.out.println(message);
        //响应请求
        resp.setContentType("text/html;charset=utf8");
    }
}
