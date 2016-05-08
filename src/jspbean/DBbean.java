package jspbean;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class DBbean 
{
    private String m_strDbdriver="com.mysql.jdbc.Driver";
    private String m_strDataBaseUrl="jdbc:mysql://localhost:3306/3dtest?characterEncoding=utf8";
    private String m_strUserId="root";
    private String m_strUserPassword="123456";
    private Connection m_pCon=null;
    private ResultSet m_pResultSet=null;
    private Statement m_pStatement=null;
    
    public void setDBDriver(String strDbDriver)
    {
    	this.m_strDbdriver=strDbDriver;
    }
    public void setDataBaseUrL(String strUrl)
    {
    	this.m_strDataBaseUrl=strUrl;
    }
    public void setUserId(String strUserId)
    {
    	this.m_strUserId=strUserId;
    }
    public void setUserPassword(String strPassword)
    {
    	this.m_strUserPassword=strPassword;
    }
    public Connection getConnection()
    {
    	return this.m_pCon;
    }
    public ResultSet getResultSet()
    {
    	return this.m_pResultSet;
    }
    
    public Statement getStatement()
    {
    	return this.m_pStatement;
    }
    
    public boolean openDataBase()
    {
    	try
    	{
    		Class.forName(this.m_strDbdriver);
    		this.m_pCon=DriverManager.getConnection(this.m_strDataBaseUrl,this.m_strUserId,this.m_strUserPassword);
    	    this.m_pStatement=this.m_pCon.createStatement();
    	    System.out.println("openDataBase success");
    	    return true;
    	}catch(Exception e)
    	{
    		System.out.println("m_strDbdriver:"+this.m_strDbdriver);
    		System.out.println("m_strDataBaseUrl:"+this.m_strDataBaseUrl);
    		System.out.println("m_strUserId:"+this.m_strUserId);
    		System.out.println("m_strUserPassword:"+this.m_strUserPassword);
    		System.out.println("openDatabase Failed"+e.getMessage());    		
    		e.printStackTrace();
    		return false;
    	}
    }
    public ResultSet querySql(String strSql)
    {
    	try
    	{
    		openDataBase();
    		System.out.println("query start...1");
    		System.out.println("sql:"+strSql);
    		this.m_pResultSet=this.m_pStatement.executeQuery(strSql);
        	return this.m_pResultSet;      	
    	}catch(Exception e)
    	{
    		System.out.println("query failed");
    		System.out.println("sql:"+strSql);
    		System.out.println(e.getMessage());
    		return null;
    	}    	
    }
    
    public boolean updateSql(String strSql)
    {
    	try 
    	{
    		openDataBase();
			this.m_pStatement.executeUpdate(strSql);
			this.m_pStatement.close();
			return true;
		} catch (Exception e)
    	{
			System.out.println("udate failed");
    		System.out.println("sql:"+strSql);
    		System.out.println(e.getMessage());
    		return false;
		}
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
