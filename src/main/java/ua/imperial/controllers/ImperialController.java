package ua.imperial.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.imperial.entities.Category;
import ua.imperial.service.ImperialService;


@Controller
public class ImperialController {

	@Autowired
	private ImperialService imperialService;

	@RequestMapping("/index")
	public String list(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		//map.put("itemList", tourService.listItem());
		
		return "list";
		
	}
	
	@RequestMapping("/addCat")
	public String add(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		//map.put("item", new Item());
		
		return "addCategory";
		
	}
	
	@RequestMapping("/categories")
	public String admin(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		//map.put("item", new Item());
		
		return "listOfCategories";
		
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}
	

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category,
			BindingResult result) {
		
		imperialService.addCategory(category);

		return "redirect:/addCat";
	}
	
	
	@RequestMapping(value = "/getCategory/{id}", method = RequestMethod.GET)
	public String getCategory(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Category category = imperialService.getCategory(id);

		map.put("category", category);
		
        return "getCategory";
	}
	
	
	@RequestMapping(value = "/editCategory", method = RequestMethod.POST)
	public String editCategory(@ModelAttribute("category") Category category, BindingResult result) {
		
		imperialService.updateCategory(category);

		return "redirect:/categories";
	}

	
	@RequestMapping("/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId) {

		imperialService.removeCategory(categoryId);

		return "redirect:/categories";
	}

}
