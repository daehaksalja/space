package org.study.home.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.study.home.mapper.MemberMapper;
import org.study.home.model.MemberDTO;
import org.study.home.model.ShipDTO;
import org.study.home.service.AdminService;
import org.study.home.service.MemberService;

@Controller
public class AdminController {
   @Autowired
   private MemberMapper mapper;
   
   @Autowired
   private MemberService memberService;
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
  
   
   @Autowired
   private AdminService adminService;
   
   @GetMapping("/adminMenu/adminMember")
   public String adminMember(Model model) {

      List<MemberDTO> list = memberService.userList();
      model.addAttribute("list", list);

      return "board/adminMember";
   }
   @GetMapping("/adminMenu")
   public String adminMenu() {
      return "board/adminMenu";
   }
   @GetMapping("/adminMenu/goodsEnroll")
   public String goodsEnroll() {
         return "admin/goodsEnroll";
      }
   @GetMapping("/adminMenu/goodsManage")
   public String goodsManage() {
         return "admin/goodsManage";
      }
   /* 상품 등록 */
   @PostMapping("/adminMenu/goodsEnroll")
   public String goodsEnrollPOST(ShipDTO ship, RedirectAttributes rttr) {
      
      logger.info("goodsEnrollPOST......" + ship);
      
      adminService.shipEnroll(ship);
      
      rttr.addFlashAttribute("enroll_result", ship.getShipName());
      
      return "redirect:/adminMenu/goodsManage";
   }   
   
   
}