package org.study.home.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.study.home.mapper.MemberMapper;
import org.study.home.model.Criteria;
import org.study.home.model.MemberDTO;
import org.study.home.model.PageDTO;
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
   @RequestMapping(value = "/adminMenu/goodsManage", method= RequestMethod.GET)
   public void goodsManage(Criteria cri, Model model) throws Exception {
      /* 상품 리스트 데이터 */

      cri.setSkip((cri.getPageNum()-1)*10);
      List<ShipDTO> list = adminService.goodsGetList(cri);
      
      if(!list.isEmpty()) {
         model.addAttribute("list", list);
      } else {
         model.addAttribute("listCheck", "empty");
         return;
      }
      
      /* 페이지 인터페이스 데이터 */
      model.addAttribute("pageMaker", new PageDTO(cri, adminService.goodsGetTotal(cri)));

   }
   /* 상품 등록 */
   @PostMapping("/adminMenu/goodsEnroll")
   public String goodsEnrollPOST(ShipDTO ship, RedirectAttributes rttr) {
      
      logger.info("goodsEnrollPOST......" + ship);
      
      adminService.shipEnroll(ship);
      
      rttr.addFlashAttribute("enroll_result", ship.getShipName());
      
      return "redirect:/adminMenu/goodsManage";
   }   
   
   @GetMapping("/goodsRead")
   public String goodsRead(@RequestParam("shipId")String shipId, Model model) {
    ShipDTO dto= adminService.goodsRead(shipId);
    model.addAttribute("dto",dto);
      return "adminMenu/goodsRead";
   }
   
   @GetMapping("/goodsUpdate")
   public String goodsUpdate(@RequestParam("shipId")String shipId, Model model) {
	   ShipDTO dto=adminService.goodsRead(shipId);
       model.addAttribute("dto",dto);
      return "adminMenu/goodsUpdate";
   }
   
   @PostMapping("/goodsUpdate")
   public String goodsUpdateProcess(ShipDTO dto) {
      adminService.goodsUpdate(dto);
      System.out.println("update ----" + dto.toString());
      
  return "redirect:/goodsRead?shipId="+dto.getShipId();
   }

   
   
   
}