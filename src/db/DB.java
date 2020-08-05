package db;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DB {
	
		private static Connection con = null;
		private static  String USUARIO = "root";
    	private static  String SENHA = "vertrigo";
    	private static  String URL = "jdbc:mysql://localhost:3306/sistema_estoque_2020";
    	private static  String DRIVER = "com.mysql.jdbc.Driver";
    	
    	/*public static Connection getConnection(){
        	
	    	if(con == null) {
	    		try {
					Class.forName(DRIVER);
					con = DriverManager.getConnection(URL, USUARIO, SENHA);
				} catch (SQLException | ClassNotFoundException e) {
					e.printStackTrace();
				}
	    	}
	        return con;
	       
	 } 	 */
	
	public static void closeConnection() {
		if(con != null) {
			try {
				con.close();
			}catch(SQLException e) {
				e.getMessage();
			}
		}
	}
	
	private static Properties loadProperties() {
		try(FileInputStream fs = new FileInputStream("db.properties")){
			Properties props = new Properties();
			props.load(fs); // faz a leitura do arquivo properties passado pelo "fs" e grava dentro do objeto props
			
			return props;
			
		}catch(IOException e ) {
			throw new DbException(e.getMessage());
		}
	}
	
	public static Connection getConnection() {
		if(con == null) {
			try {
				Properties props = loadProperties();
				String url = props.getProperty("dburl");
				con = DriverManager.getConnection(url, props);
			}catch(SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
		return con;
	}
}
