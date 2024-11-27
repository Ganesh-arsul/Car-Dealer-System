package com.DAO;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.business.SignupService;

public class SignupDao {

public int insert(SignupService dto)throws Exception
	
{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection	con = DriverManager.getConnection("jdbc:mysql://localhost:3307/car?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
	    PreparedStatement  pstm = con.prepareStatement("insert into login_signup values(?,?,?,?,?)");
	    pstm.setString(1,dto.getFname());
	    pstm.setString(2,dto.getLname());
	    pstm.setString(3,dto.getEmail());
	    pstm.setString(4,dto.getPassword());
		pstm.setString(5,dto.getUserType());
		int i = pstm.executeUpdate();
		return i;	
		
		
}

public void deleeteData()
{

}
public void updateData()
{
}
public void displayData()
{
}

}
