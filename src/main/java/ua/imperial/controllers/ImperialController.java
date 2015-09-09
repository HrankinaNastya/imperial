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
import ua.imperial.entities.Fact;
import ua.imperial.entities.Section;
import ua.imperial.entities.Subcategory;
import ua.imperial.service.ImperialService;


/**
 * @author grankinaap
 *
 */
@Controller
public class ImperialController {

	@Autowired
	private ImperialService imperialService;

	@RequestMapping("/index")
	public String list(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		
		return "list";
	}
	
	@RequestMapping("/")
	public String home(Map<String, Object> map) {

		map.put("category", imperialService.getCategory(1));
		map.put("categoryList", imperialService.listCategory());
		return "index";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "redirect:/admin/categories";
	}
	
	/*
	 * CategoryController
	 */
	
	@RequestMapping("admin/addCat")
	public String addCat(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		
		return "addCategory";
	}
	
	@RequestMapping(value = "admin/addCategory", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category,
			BindingResult result) {
		
		imperialService.addCategory(category);

		return "redirect:/admin/addCat";
	}
	
	@RequestMapping(value = "admin/getCategory/{id}", method = RequestMethod.GET)
	public String getCategory(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Category category = imperialService.getCategory(id);

		map.put("category", category);
		
        return "getCategory";
	}
	
	@RequestMapping("admin/categories")
	public String categories(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		
		return "listOfCategories";
	}
	
	@RequestMapping(value = "admin/editCategory", method = RequestMethod.POST)
	public String editCategory(@ModelAttribute("category") Category category, BindingResult result) {
		
		imperialService.updateCategory(category);

		return "redirect:/admin/categories";
	}

	@RequestMapping("admin/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId) {

		imperialService.removeCategory(categoryId);

		return "redirect:/admin/categories";
	}
	
	/*
	 * SubcategoryController
	 */
	
	@RequestMapping("admin/addSubcat")
	public String addSubcat(Map<String, Object> map) {

		map.put("subcategory", new Subcategory());
		map.put("categoryList", imperialService.listCategory());
		
		return "addSubcategory";
	}
	
	@RequestMapping(value = "admin/addSubcategory", method = RequestMethod.POST)
	public String addSubcategory(@ModelAttribute("subcategory") Subcategory subcategory,
			BindingResult result) {
		
		imperialService.addSubcategory(subcategory);

		return "redirect:/admin/addSubcat";
	}
	
	@RequestMapping(value = "admin/getSubcategory/{id}", method = RequestMethod.GET)
	public String getSubcategory(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Subcategory subcategory = imperialService.getSubcategory(id);

		map.put("categoryList", imperialService.listCategory());
		map.put("subcategory", subcategory);
		
        return "getSubcategory";
	}
	
	@RequestMapping("admin/subcategories")
	public String subcategories(Map<String, Object> map) {

		map.put("subcategoryList", imperialService.listSubcategory());
		
		return "listOfSubcategories";
	}
	
	@RequestMapping(value = "admin/editSubcategory", method = RequestMethod.POST)
	public String editSubcategory(@ModelAttribute("subcategory") Subcategory subcategory, 
			Map<String, Object> map, BindingResult result) {
		
		map.put("categoryList", imperialService.listCategory());
		
		imperialService.updateSubcategory(subcategory);

		return "redirect:/admin/subcategories";
	}

	@RequestMapping("admin/deleteSubcategory/{subcategoryId}")
	public String deleteSubcategory(@PathVariable("subcategoryId") Integer subcategoryId) {

		imperialService.removeSubcategory(subcategoryId);

		return "redirect:/admin/subcategories";
	}
	
	/*
	 * SectionController
	 */
	
	@RequestMapping(value = "admin/addSection", method = RequestMethod.POST)
	public String addSection(@ModelAttribute("section") Section section,
			BindingResult result) {
		
		imperialService.addSection(section);

		return "redirect:/admin/sections";
	}
	
	@RequestMapping(value = "admin/getSection/{id}", method = RequestMethod.GET)
	public String getSection(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Section section = imperialService.getSection(id);

		map.put("section", section);
		
        return "getSection";
	}
	
	@RequestMapping("admin/sections")
	public String sections(Map<String, Object> map) {

		map.put("section", new Section());
		map.put("sectionList", imperialService.listSection());
		
		return "section";
	}
	
	@RequestMapping(value = "admin/editSection", method = RequestMethod.POST)
	public String editSection(@ModelAttribute("section") Section section, 
			BindingResult result) {
		
		imperialService.updateSection(section);

		return "redirect:/admin/sections";
	}

	@RequestMapping("admin/deleteSection/{sectionId}")
	public String deleteSection(@PathVariable("sectionId") Integer sectionId) {

		imperialService.removeSection(sectionId);

		return "redirect:/admin/sections";
	}
	
	/*
	 * FactController
	 */
	
	@RequestMapping("admin/addFact")
	public String addFact(Map<String, Object> map) {

		map.put("fact", new Fact());
		map.put("sectionList", imperialService.listSection());
		
		return "addFact";
	}
	
	@RequestMapping(value = "admin/addFactObj", method = RequestMethod.POST)
	public String addFactObj(@ModelAttribute("fact") Fact fact,
			BindingResult result) {
		
		imperialService.addFact(fact);

		return "redirect:/admin/addFact";
	}
	
	@RequestMapping(value = "admin/getFact/{id}", method = RequestMethod.GET)
	public String getFact(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Fact fact = imperialService.getFact(id);
		
		map.put("section", new Section());
		map.put("sectionList", imperialService.listSection());
		map.put("fact", fact);
		
        return "getFact";
	}
	
	@RequestMapping("admin/facts")
	public String facts(Map<String, Object> map) {
		
		map.put("factList", imperialService.listFact());
		
		return "listOfFacts";
	}
	
	@RequestMapping(value = "admin/editFact", method = RequestMethod.POST)
	public String editFact(@ModelAttribute("fact") Fact fact, Map<String, Object> map,
			BindingResult result) {
		
		map.put("section", new Section());
		map.put("sectionList", imperialService.listSection());
		
		imperialService.updateFact(fact);

		return "redirect:/admin/facts";
	}

	@RequestMapping("admin/deleteFact/{factId}")
	public String deleteFact(@PathVariable("factId") Integer factId) {

		imperialService.removeFact(factId);

		return "redirect:/admin/facts";
	}
	
}
