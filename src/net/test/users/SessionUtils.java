package net.test.users;

import javax.servlet.http.HttpSession;

public class SessionUtils {
	public static boolean isEmpty(HttpSession session, String key){
		Object object = session.getAttribute(key);
		if(object == null){
			return false;
		}
		return true;
	}
	
	public static String getStringValue(HttpSession session, String key){
		if(!isEmpty(session, key)){
			return null;
		}
		return (String)session.getAttribute(key);
	}
}
