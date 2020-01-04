package cn.edu.cup.tanyao.webstudy.utils;


import javax.xml.transform.sax.SAXTransformerFactory;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.Properties;

/**
 * @author tanyao
 * @date 2019/12/31
 */
public class JDBCUtil {
    private static String user;
    private static String password;
    private static String url;
    private static String driver;

    /**
     * 加载数据库配置文件
     */
    static {
        try {
            Properties properties = new Properties();
            ClassLoader cl = JDBCUtil.class.getClassLoader();
            URL resource = cl.getResource("jdbc.properties");
            properties.load(new FileReader(resource.getPath()));
            url = properties.getProperty("url");
            user = properties.getProperty("user");
            password = properties.getProperty("password");
            driver = properties.getProperty("driver");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取JDBC连接
     * @return
     */
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void close(Statement statement, Connection connection) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void close(ResultSet resultset, Statement statement, Connection connection) {
        if (resultset != null) {
            try {
                resultset.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        close(statement, connection);
    }
}
