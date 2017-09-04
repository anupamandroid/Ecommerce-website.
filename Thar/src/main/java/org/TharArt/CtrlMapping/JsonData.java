package org.TharArt.CtrlMapping;

import java.util.List;

import org.TharArt.DtoMapping.ItemsDto;
import org.TharArt.ServLogic.TharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JsonData {
	
	@Autowired
	TharService service;

	@RequestMapping(value="/restItemCategory", method = RequestMethod.GET)
	@ResponseBody
	public List<ItemsDto> itemCategory(){
		return service.fetchAll();
	}
	
	@RequestMapping(value="/restItemType", method = RequestMethod.GET)
	@ResponseBody
	public List<String> itemType(){
		return service.fetchAllItemsType();
	}
}
