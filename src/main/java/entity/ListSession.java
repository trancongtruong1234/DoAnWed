package entity;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class ListSession {

 	private  ArrayList<HttpSession> listUser = new ArrayList<HttpSession>();
 	
 	public void setSession(HttpSession a) {
		listUser.add(a);
	}
 	public HttpSession getSession(int a) {
	 	return listUser.get(a);
	}
	
}
