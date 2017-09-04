package org.TharArt.CtrlMapping;

import java.util.ArrayList;
import java.util.List;

import org.TharArt.DtoMapping.ItemsDto;
import org.TharArt.DtoMapping.UserDto;
import org.TharArt.ServLogic.TharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TharController {

	@Autowired
	TharService service;
/************************************************************************* Costomer Page **********************************************************************/
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView indexPage() {
		ModelAndView model = new ModelAndView();
		List<ItemsDto> dto = new ArrayList<ItemsDto>();
		dto = service.fetchAll();
		model.addObject("dto", dto);
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value="/order",method=RequestMethod.POST)  
	public ModelAndView placeOrder(@RequestParam String orderName,@RequestParam String orderEmail,@RequestParam String orderNumber) {
		ModelAndView model = new ModelAndView();
		System.out.println(orderName+orderEmail+orderNumber);
		model.setViewName("mainPage");
		return model;
	}
	
	@RequestMapping(value="/newsLetter",method=RequestMethod.POST)  
	public ModelAndView addNewsLetter(@RequestParam String email){
		ModelAndView model = new ModelAndView();
		System.out.println(email);
		if(service.insertNewsLetter(email)) model.addObject("error", "successfully");
		else model.addObject("error", "Invalid ! Error while inserting onto the DB");
		model.setViewName("mainPage");
		return model;
	}

	@RequestMapping(value="/deactiveNewsLetter",method=RequestMethod.GET)  
	public ModelAndView deactiveNewsLetter(@RequestParam String email){
		ModelAndView model = new ModelAndView();
		System.out.println(email);
		if(service.deactiveNewsLetter(email)) model.addObject("error", "successfully");
		else model.addObject("error", "Invalid ! Error while inserting onto the DB");
		model.setViewName("mainPage");
		return model;
	}
	
/**************************************************************************** User Page **************************************************************************/	
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/savefile",method=RequestMethod.POST)  
	public ModelAndView addItemdetail(@RequestParam String itemFolder, @RequestParam String itemName,
			@RequestParam String itemDetail, @RequestParam double price, @RequestParam double itemHeight,
			@RequestParam double itemLength, @RequestParam double itemWidth, @RequestParam double itemWeight,
			@RequestParam MultipartFile[] file) {
		
		ModelAndView model = new ModelAndView();
		System.out.println(itemFolder+" "+itemName+" "+itemDetail+" "+price+" "+itemHeight+" "+itemLength+" "+itemWidth+" "+itemWeight);
		try {
			if(service.insertALL(itemFolder,itemName,itemDetail,price,itemHeight,itemLength,itemWidth,itemWeight,file)) model.addObject("error", "successfully");
			else model.addObject("error", "Invalid ! Error while adding onto the DB");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.setViewName("userPage");
		return model;
	}
	
	
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/itemDetail",method=RequestMethod.POST)  
	public ModelAndView itemdetail(@RequestParam String itemFolder) {
		
		ModelAndView model = new ModelAndView();
		List<ItemsDto> dtoItemDetail = new ArrayList<ItemsDto>();
		dtoItemDetail = service.fetchAllDto(itemFolder);
		model.addObject("dtoItemDetail", dtoItemDetail);
		model.addObject("error", "successfully");
		model.setViewName("userPage");
		return model;
	}
	
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/addUser",method=RequestMethod.POST)  
	public ModelAndView addTagUser(@RequestParam String userName, @RequestParam String userPassword) {
		
		ModelAndView model = new ModelAndView();
		System.out.println(userName+" "+userPassword);
		try {
			if(service.insertTagUser(userName,userPassword)) model.addObject("error", "inserted Successfully !!");
			else model.addObject("error", "Invalid ! Error while adding into the DB");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.setViewName("userPage");
		return model;
	}
	
/**************************************************************************** Admin Page *************************************************************/	
	@Secured({"ROLE_ADMIN"})
	@RequestMapping(value="/addAdmin",method=RequestMethod.POST)  
	public ModelAndView addTagAdmin(@RequestParam String adminName, @RequestParam String adminPassword) {
		
		ModelAndView model = new ModelAndView();
		System.out.println(adminName+" "+adminPassword);
		try {
			if(service.insertTagAdmin(adminName,adminPassword)) model.addObject("error", "inserted Successfully !!");
			else model.addObject("error", "Invalid ! Error while adding into the DB");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.setViewName("adminPage");
		return model;
	}
	
	@Secured({"ROLE_ADMIN"})
	@RequestMapping(value="/fetchAllUser",method=RequestMethod.POST)  
	public ModelAndView fetchUsername(@RequestParam String userRole) {
		
		ModelAndView model = new ModelAndView();
		List<UserDto> dtoUser = new ArrayList<UserDto>();
		dtoUser = service.fetchAllUserDto(userRole);
		model.addObject("dtoUser", dtoUser);
		model.addObject("error", "successfully");
		model.setViewName("adminPage");
		return model;
	}
}
