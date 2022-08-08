package org.study.home.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.study.home.mapper.MemberMapper;
import org.study.home.model.MemberDTO;
import org.study.home.service.MemberService;

@Controller
public class AdminController {
   @Autowired
   private MemberMapper mapper;
   
   @Autowired
   private MemberService memberService;
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
  
   @GetMapping("/adminMember")
   public String adminMember(Model model) {

      List<MemberDTO> list = memberService.userList();
      model.addAttribute("list", list);

      return "board/adminMember";
   }
}
