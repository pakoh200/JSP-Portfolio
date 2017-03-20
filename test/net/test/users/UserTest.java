package net.test.users;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;

public class UserTest {
	public static User TEST_USER = new User("test","test","test","test@test.test");
	private UserDAO userDao;
	
	@Before
	public void setup() throws Exception{
		userDao = new UserDAO();
		userDao.removeUser(TEST_USER.getUserId());
	}
	
	@Test
	public void matchPassword() {
		assertTrue(TEST_USER.matchPassword("test"));
	}
	
	@Test
	public void notMatchPassword() {
		assertFalse(TEST_USER.matchPassword("test22"));
	}
	
	@Test
	public void login() throws Exception {
		User user = TEST_USER;
		userDao.create(user);
		assertTrue(User.login(TEST_USER.getUserId(), TEST_USER.getPassword()));
	}
	
	@Test(expected=UserNotFoundException.class)
	public void loginWhenNotExistedUser() throws Exception {
		User.login("test222", TEST_USER.getPassword());
	}
	
	@Test(expected=PasswordMisMatchException.class)
	public void loginWhenPasswordMisMatch() throws Exception {
		User user = TEST_USER;
		userDao.create(user);
		User.login(user.getUserId(), "test222");
	}

}
