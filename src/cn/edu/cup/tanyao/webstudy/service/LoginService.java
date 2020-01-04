package cn.edu.cup.tanyao.webstudy.service;

import cn.edu.cup.tanyao.webstudy.dao.LoginDao;
import cn.edu.cup.tanyao.webstudy.domain.User;

/**
 * @author tanyao
 * @date 2019/12/31
 */
public class LoginService {
    public String checkLogin(String email, String password) {

        LoginDao loginDao = new LoginDao();
        User user = loginDao.checkLogin(email);
        if (null == user) {
            return "用户不存在！";
        } else {
            if (user.getPassword().equals(password)) {
                return "登陆成功！";
            }
            else {
                return "密码错误！";
            }
        }
    }
}
