package Dao;

import java.sql.*;

public class dao {
Connection con = null;
Statement stat = null;
ResultSet rs = null;

public dao() {
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fruit_sale","root","root");
stat = con.createStatement();
} catch (Exception e) {
// TODO: handle exception
con = null;
}
}

public ResultSet executeQuery(String sql) {
try {
rs = stat.executeQuery(sql);
} catch (Exception e) {
// TODO: handle exception
rs = null;
}

return rs;
}

public int executeUpdate(String sql) {
try {
stat.executeUpdate(sql);
return 0;
} catch (Exception e) {
// TODO: handle exception
}
return -1;
}
}