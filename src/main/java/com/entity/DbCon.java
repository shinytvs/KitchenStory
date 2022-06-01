package com.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dao.ProductDao;
public class DbCon {
	
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
        if(connection == null){
        	 Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3307/org?useSSL=false","root","password");
            System.out.print("connected");
        }
        return connection;
        
    }}
	
	
	