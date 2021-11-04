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

public class DaoViewContent {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String a = "3";

	public List<Content> getdata() {
		List<Content> list = new ArrayList<>();
		String query = "select * from Content where AuthorId= 2";
		try {
			new DBContext();
			conn = DBContext.getConnection();// mở kết nối với mýql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getDate(6), rs.getInt(7), rs.getInt(8)));
			}
		} catch (Exception e) {

		}

		return list;
	}

	public static void main(String[] args) {
		DaoViewContent dao = new DaoViewContent();
		List<Content> list = dao.getdata();
		for (Content o : list) {
			System.out.print(o.getTitle());
		}
	}
}
