package org.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewRedirectController {
	
  @RequestMapping("/")
  public ModelAndView index() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/index");
    return mav;
  }
  
  @RequestMapping("/signin")
  public ModelAndView signin() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/login");
    return mav;
  }
  
  @RequestMapping("/query")
  public ModelAndView query() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/query");
    return mav;
  }
  
  @RequestMapping("/navbar")
  public ModelAndView navbar() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/navbar");
    return mav;
  }
  
  @RequestMapping("/footer")
  public ModelAndView footer() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/footer");
    return mav;
  }
  
  @RequestMapping("/textlist")
  public ModelAndView textlist() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/textlist");
    return mav;
  }
  
  @RequestMapping("/imagecarousel")
  public ModelAndView imagecarousel() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/imagecarousel");
    return mav;
  }
  
  @RequestMapping("/searchbar")
  public ModelAndView searchbar() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/searchbar");
    return mav;
  }
  
}
