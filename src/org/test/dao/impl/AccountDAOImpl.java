package org.test.dao.impl;

import java.sql.SQLException;

import org.springframework.stereotype.Service;
import org.test.dao.AccountDAO;
import org.test.utils.MyQueryRunnerUtil;
import org.test.utils.SpringSecurityUtil;

@Service("accountDAO")
public class AccountDAOImpl implements AccountDAO{

	@Override
	public int register(String email, String password) {
		
		System.out.println("user "+email+" is registering");
		String addUser = "insert into users(username,password) values(?,?)";
		String pwd = SpringSecurityUtil.encode(password);
		Object[] param = {email, pwd};
		
		String addAuthority = "insert into authorities(username,authority) values(?,'ROLE_USER')";
		Object[] authorityParam = {email};
		
		int rows = 0;
		try {
			rows = MyQueryRunnerUtil.getQueryRunner().update(addUser, param);
			rows += MyQueryRunnerUtil.getQueryRunner().update(addAuthority, authorityParam);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rows;
	}

}
