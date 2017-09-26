package org.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.test.dao.AccountDAO;

@Controller
public class AccountController {
	
	@Autowired
	private AccountDAO accountDAO;
	
  
  @RequestMapping("/register")
  public @ResponseBody int register(String email, String password) {
  	
  	return accountDAO.register(email, password);
    
  }

}
