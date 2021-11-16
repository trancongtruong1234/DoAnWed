package dao;
import entity.Content;
import entity.Member;
import context.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
public class DaoEditContent {
	public Content updateContent (String id, String title, String brief, String content)
	{
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "update Content set Title =?,Brief=? ,Content=? where id= ?";
		try {
			new DBContext();
			conn = DBContext.getConnection();// mở kết nối với mýql
			ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setString(4, id);
			ps.executeUpdate();
		} catch (Exception e) {

		}
		return null;
		
	}
}
