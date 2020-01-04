package cn.edu.cup.tanyao.webstudy.dao;

import cn.edu.cup.tanyao.webstudy.domain.User;
import cn.edu.cup.tanyao.webstudy.utils.JDBCUtil;

import java.sql.*;

/**
 * @author tanyao
 * @date 2019/12/31
 */
public class LoginDao {
    /**
     * 根据email查询用户
     * @param email
     * @return
     */
    public User checkLogin(String email) {
        User user = null;
        try {
            //获取数据库连接
            Connection connection = JDBCUtil.getConnection();
            //定义sql语句
            String sql = "select * from user where user.email = ?";
            //创建sql执行对象
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            //给占位符赋值
            preparedStatement.setString(1, email);
            //获取结果集
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int uid = resultSet.getInt("uid");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email1 = resultSet.getString("email");

                user = new User(uid, username, password, email);
            }
            JDBCUtil.close(resultSet, preparedStatement, connection);
            return user;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
