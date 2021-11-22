package dao;
import context.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DaoEditContent {
	public void updateContent (String title, String brief, String content,String id)
	{
		Connection conn = null;
		PreparedStatement ps = null;
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
			//System.out.printf("được");
		} catch (Exception e) {
			System.out.printf("loi");
		}
	}
	public static void main(String[] args) {
		/*
		 * DaoEditContent dao = new DaoEditContent(); dao.updateContent("dfd", "dvd",
		 * "fgfgf","14"); //System.out.printf("vdvdv");
		 */	}
}
