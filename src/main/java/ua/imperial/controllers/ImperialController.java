package ua.imperial.controllers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ua.imperial.entities.Category;
import ua.imperial.entities.Coordinates;
import ua.imperial.entities.Fact;
import ua.imperial.entities.Feedback;
import ua.imperial.entities.Navigation;
import ua.imperial.entities.News;
import ua.imperial.entities.Page;
import ua.imperial.entities.PageFact;
import ua.imperial.entities.PageSearch;
import ua.imperial.entities.Post;
import ua.imperial.entities.Search;
import ua.imperial.entities.Section;
import ua.imperial.entities.Subcategory;
import ua.imperial.entities.Subscribe;
import ua.imperial.service.ImperialService;


/**
 * @author grankinaap
 *
 */
@Controller
public class ImperialController {

	@Autowired
	private ImperialService imperialService;
	
	@Autowired
	private MessageSource messageSource;
	
	private Random random = new Random();
	
	
	public String getLocale(Locale locale){
		
		if (locale.getDisplayLanguage().equals("русский")){
			return "?lang=ru";
		}
		else if (locale.getDisplayLanguage().equals("английский")){
			return "?lang=en";
		}
		else if (locale.getDisplayLanguage().equals("испанский")){
			return "?lang=es";
		}
		else return "";
		
	}
	
	public String getLang(Locale locale){
		
		if (locale.getDisplayLanguage().equals("русский")){
			return "ru";
		}
		else if (locale.getDisplayLanguage().equals("английский")){
			return "en";
		}
		else if (locale.getDisplayLanguage().equals("испанский")){
			return "es";
		}
		else return "ru";
		
	}

	@RequestMapping("/index")
	public String list(Map<String, Object> map) {

		map.put("category", new Category());
		map.put("categoryList", imperialService.listCategory());
		
		return "list";
	}
	
	@RequestMapping("/")
	public String home(Locale locale, Map<String, Object> map) {
		

		map.put("locale", getLocale(locale));
		map.put("lang", getLang(locale));

		map.put("category", imperialService.getCategory(1));
		map.put("categoryList", imperialService.listCategory());
		map.put("coordinatesList", imperialService.listCoordinates());
		map.put("subscribe", new Subscribe());
		
		return "index";
	}
	
	@RequestMapping("/feedback")
	public String feedback(Locale locale, Map<String, Object> map) {
		
		map.put("locale", getLocale(locale));
		map.put("lang", getLang(locale));
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(4));
		map.put("categoryList", imperialService.listCategory());
		map.put("feedback", new Feedback());
		
		return "feedbacks";
	}
	
	@RequestMapping("/sitemap")
	public String sitemap(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(10));
		
		List<Category> categories = imperialService.listCategory();
		Iterator<Category> iter = categories.iterator();
		
		while(iter.hasNext()){
			Category category = iter.next();
			category.setSubcategories(imperialService.listSubcategoryfromCategory(
							category.getId()));
		}
		
 		map.put("categoryList", categories);
		
 		iter = categories.iterator();
		
		while(iter.hasNext()){
			Category category = iter.next();
			System.out.println(category.getName());
			for(Subcategory sub: category.getSubcategories()){
				System.out.println("__ " + sub.getName());
			}
		}
	
		
		
		return "sitemap";
	}
	
	@RequestMapping("/news")
	public String newspage(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(5));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		
		Page page = new Page(imperialService.listNews());
		List<Post> posts = page.getPosts();
		List<Navigation> navs = new ArrayList<Navigation>();
		
		int i = 0;
		int number =0;
		for(Post post:posts){
			navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
		}
		map.put("post", page.getPosts().get(0));
		map.put("newsList", posts.get(0).getNews());
		map.put("page", page);
		map.put("navList", navs);
		
		
		
		return "news";
	}
	
	@RequestMapping("/search")
	public String searchresults(@RequestParam(value="q",  required=false) String q, 
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(11));
		map.put("categoryList", imperialService.listCategory());
		
		Search search = new Search(imperialService.listCategory(), 
				imperialService.listSubcategory(), imperialService.listNews(), q);
		
		if (! search.getSearchResults().isEmpty()){
			PageSearch page = new PageSearch(search.getSearchResults());
			List<Post> posts = page.getPosts();
			List<Navigation> navs = new ArrayList<Navigation>();
			
			int i = 0;
			int number = 0;
			for(Post post:posts){
				navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
			}
			map.put("post", page.getPosts().get(0));
			map.put("listSearchR", posts.get(0).getSearchResults());
			map.put("page", page);
			map.put("navList", navs);
			
		}
		
		map.put("q", q);

		return "search";
	}
	
	@RequestMapping("/facts/nav/{id}")
	public String factsByNav(@PathVariable("id") Integer id,
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(12));
		map.put("categoryList", imperialService.listCategory());
		
		if (! facts.isEmpty()){
			PageFact page = new PageFact(facts);
			List<Post> posts = page.getPosts();
			List<Navigation> navs = new ArrayList<Navigation>();
			
			int i = 0;
			int number = 0;
			for(Post post:posts){
				navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
			}
			map.put("post", posts.get(id-1));
			map.put("facts", posts.get(id-1).getFacts());
			map.put("page", page);
			map.put("navList", navs);
			
		}
		
		return "facts";
	}
	
	@RequestMapping("/facts")
	public String allfacts(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(12));
		map.put("categoryList", imperialService.listCategory());
		
		if (! facts.isEmpty()){
			PageFact page = new PageFact(facts);
			List<Post> posts = page.getPosts();
			List<Navigation> navs = new ArrayList<Navigation>();
			
			int i = 0;
			int number = 0;
			for(Post post:posts){
				navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
			}
			map.put("post", posts.get(0));
			map.put("facts", posts.get(0).getFacts());
			map.put("page", page);
			map.put("navList", navs);
			
		}
		
		return "facts";
	}
	
	@RequestMapping(value = "/facts/{id}", method = RequestMethod.GET)
	public String factsById(@PathVariable("id") Integer id,
			Map<String, Object> map) {
			
		map.put("fact", imperialService.getFact(id));
		
		map.put("category", imperialService.getCategory(12));
		map.put("categoryList", imperialService.listCategory());

		
		return "factsById";
	}
	
	@RequestMapping("/search/nav/{id}")
	public String searchresultsByNav(@PathVariable("id") Integer id,
			@RequestParam(value="q",  required=false) String q, 
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(11));
		map.put("categoryList", imperialService.listCategory());
		
		Search search = new Search(imperialService.listCategory(), 
				imperialService.listSubcategory(), imperialService.listNews(), q);
		
		if (! search.getSearchResults().isEmpty()){
			PageSearch page = new PageSearch(search.getSearchResults());
			List<Post> posts = page.getPosts();
			List<Navigation> navs = new ArrayList<Navigation>();
			
			int i = 0;
			int number = 0;
			for(Post post:posts){
				navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
			}
			map.put("post", posts.get(id-1));
			map.put("listSearchR", posts.get(id-1).getSearchResults());
			map.put("page", page);
			map.put("navList", navs);
			
		}
		
		map.put("q", q);

		return "search";
	}
	
	@RequestMapping("/news/nav/{id}")
	public String newsNav(@PathVariable("id") Integer id, Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(5));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		
		Page page = new Page(imperialService.listNews());
		List<Post> posts = page.getPosts();
		List<Navigation> navs = new ArrayList<Navigation>();
		
		int i = 0;
		int number =0;
		for(Post post:posts){
			navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
		}
		map.put("post", posts.get(id-1));
		map.put("newsList", posts.get(id-1).getNews());
		map.put("page", page);
		map.put("navList", navs);
		
		return "newsByNav";
	}
	
	@RequestMapping("/news/cat/{id_subcat}/{id}")
	public String newsCat(@PathVariable("id_subcat") Integer id_subcat, @PathVariable("id") Integer id, 
			Map<String, Object> map) {
		  
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(5));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		map.put("subcategory", imperialService.getSubcategory(id_subcat));
		
		if (!imperialService.listNewsfromSubcategory(id_subcat).isEmpty()){
			Page page = new Page(imperialService.listNewsfromSubcategory(id_subcat));
			List<Post> posts = page.getPosts();
			List<Navigation> navs = new ArrayList<Navigation>();
			
			int i = 0;
			int number =0;
			for(Post post:posts){
				navs.add(new Navigation(++number, ++i, (i+= post.getLenght() - 1)));
			}
			map.put("post", posts.get(id-1));
			map.put("newsList", posts.get(id-1).getNews());
			map.put("page", page);
			map.put("navList", navs);
		}
		
		return "newsByCat";
	}
	
	@RequestMapping("/bananas")
	public String bananas(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(8));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(8));
		
		return "bananas";
	}
	
	@RequestMapping(value = "/bananas/{id}", method = RequestMethod.GET)
	public String bananasById(@PathVariable("id") Integer id,
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(8));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(8));
		map.put("subcategory", imperialService.getSubcategory(id));
		
		return "bananasById";
	}
	
	
	@RequestMapping("/logistics")
	public String logistics(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(9));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(9));
		
		return "logistics";
	}
	
	@RequestMapping("/warehouse")
	public String warehouse(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(13));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(13));
		
		return "warehouse";
	}
	
	@RequestMapping(value = "/logistics/{id}", method = RequestMethod.GET)
	public String logisticsById(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(9));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(9));
		map.put("subcategory", imperialService.getSubcategory(id));
		
		return "logisticsByID";
	}
	
	@RequestMapping("/ecuador")
	public String ecuador(Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(7));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(7));
		
		return "ecuador";
	}
	
	@RequestMapping(value = "/ecuador/{id}", method = RequestMethod.GET)
	public String ecuadorById(@PathVariable("id") Integer id,
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(7));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(7));
		map.put("subcategory", imperialService.getSubcategory(id));
		
		return "ecuadorById";
	}
	
	@RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
	public String getNewsById(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		News news = imperialService.getNews(id);

		map.put("news", news);
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		map.put("category", imperialService.getCategory(5));
		map.put("categoryList", imperialService.listCategory());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		map.put("newsList", imperialService.listNews());
		
        return "newsById";
	}
	
	
	@RequestMapping("/admin")
	public String admin() {
		return "redirect:/admin/categories";
	}
	
	@RequestMapping(value = "contacts/{id}", method = RequestMethod.GET)
	public String contacts(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		
		List<Fact> facts = imperialService.listFactfromSection(1);
		int index = random.nextInt(facts.size());		
		map.put("fact", facts.get(index));
		
		Coordinates coordinates = imperialService.getCoordinates(id);

		map.put("coordinates", coordinates);
		map.put("coordinatesList", imperialService.listCoordinates());
		map.put("category", imperialService.getCategory(6));
		map.put("categoryList", imperialService.listCategory());
		
        return "contacts";
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
	
	/*
	 * FeedbackController
	 */
	
	@RequestMapping(value = "addFeedback", method = RequestMethod.POST)
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback,
			BindingResult result) {
		
		imperialService.addFeedback(feedback);

		return "redirect:/feedback";
	}
	
	@RequestMapping(value = "admin/getFeedback/{id}", method = RequestMethod.GET)
	public String getFeedback(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Feedback feedback = imperialService.getFeedback(id);
		
		map.put("feedback", feedback);
		
        return "getFeedback";
	}
	
	@RequestMapping("admin/feedbacks")
	public String feedbacks(Map<String, Object> map) {
		
		map.put("feedbackList", imperialService.listFeedback());
		
		return "listOfFeedbacks";
	}
	
	@RequestMapping(value = "admin/editFeedback", method = RequestMethod.POST)
	public String editFeedback(@ModelAttribute("feedback") Feedback feedback, Map<String, Object> map,
			BindingResult result) {
		
		imperialService.updateFeedback(feedback);

		return "redirect:/admin/feedbacks";
	}

	@RequestMapping("admin/deleteFeedback/{feedbackId}")
	public String deleteFeedback(@PathVariable("feedbackId") Integer feedbackId) {

		imperialService.removeFeedback(feedbackId);

		return "redirect:/admin/feedbacks";
	}
	
	/*
	 * CoordinatesController
	 */
	
	@RequestMapping("admin/addCoordinates")
	public String addCoordinates(Map<String, Object> map) {

		map.put("coordinates", new Coordinates());

		return "addCoordinates";
	}
	
	@RequestMapping(value = "admin/addCoord", method = RequestMethod.POST)
	public String addCoord(@ModelAttribute("coordinates") Coordinates coordinates,
			BindingResult result) {
		
		imperialService.addCoordinates(coordinates);

		return "redirect:/admin/addCoordinates";
	}
	
	@RequestMapping(value = "admin/getCoordinates/{id}", method = RequestMethod.GET)
	public String getCoordinates(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		Coordinates coordinates = imperialService.getCoordinates(id);

		map.put("coordinates", coordinates);
		
        return "getCoordinates";
	}
	
	@RequestMapping("admin/coordinates")
	public String coordinates(Map<String, Object> map) {

		map.put("coordinatesList", imperialService.listCoordinates());
		
		return "listOfCoordinates";
	}
	
	@RequestMapping(value = "admin/editCoordinates", method = RequestMethod.POST)
	public String editCoordinates(@ModelAttribute("coordinates") Coordinates coordinates, BindingResult result) {
		
		imperialService.updateCoordinates(coordinates);

		return "redirect:/admin/coordinates";
	}

	@RequestMapping("admin/deleteCoordinates/{coordinatesId}")
	public String deleteCoordinates(@PathVariable("coordinatesId") Integer coordinatesId) {

		imperialService.removeCoordinates(coordinatesId);

		return "redirect:/admin/coordinates";
	}
	
	/*
	 * NewsDAO
	 */
	
	@RequestMapping("admin/addNews")
	public String addNews(Map<String, Object> map) {

		map.put("news", new News());
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		
		return "addNews";
	}
	
	@RequestMapping(value = "admin/addNewsObj", method = RequestMethod.POST)
	public String addNewsObj(@ModelAttribute("news") News news,
			BindingResult result) {
		
		imperialService.addNews(news);

		return "redirect:/admin/addNews";
	}
	
	@RequestMapping(value = "admin/getNews/{id}", method = RequestMethod.GET)
	public String getNews(@PathVariable("id") Integer id, 
			Map<String, Object> map) {
		News news = imperialService.getNews(id);

		map.put("news", news);
		map.put("subcategoryList", imperialService.listSubcategoryfromCategory(5));
		
        return "getNews";
	}
	
	@RequestMapping("admin/news")
	public String news(Map<String, Object> map) {

		map.put("newsList", imperialService.listNews());
		
		return "listOfNews";
	}
	
	@RequestMapping(value = "admin/editNews", method = RequestMethod.POST)
	public String editNews(@ModelAttribute("news") News news, BindingResult result) {
		
		imperialService.updateNews(news);

		return "redirect:/admin/news";
	}

	@RequestMapping("admin/deleteNews/{newsId}")
	public String deleteNews(@PathVariable("newsId") Integer newsId) {

		imperialService.removeNews(newsId);

		return "redirect:/admin/news";
	}
	
	/*
	 * SubscribeDAO
	 */
	
	@RequestMapping(value = "/addSubscribe", method = RequestMethod.POST)
	public String addSubscribe(@ModelAttribute("subscribe") Subscribe subscribe,
			BindingResult result) {
		
		imperialService.addSubscribe(subscribe);

		return "redirect:/";
	}
	
	@RequestMapping(value = "admin/getSubscribe/{id}", method = RequestMethod.GET)
	public String getSubscribe(@PathVariable("id") Integer id, 
			Map<String, Object> map) {

		map.put("subscribe", imperialService.getSubscribe(id));
		
        return "getSubscribe";
	}
	
	@RequestMapping("admin/subscribes")
	public String subscribes(Map<String, Object> map) {

		map.put("subscribeList", imperialService.listSubscribe());
		
		return "listOfSubscribes";
	}
	
	@RequestMapping(value = "admin/editSubscribe", method = RequestMethod.POST)
	public String editNews(@ModelAttribute("subscribe") Subscribe subscribe, 
			BindingResult result) {
		
		imperialService.updateSubscribe(subscribe);

		return "redirect:/admin/subscribes";
	}

	@RequestMapping("admin/deleteSubscribe/{subscribeId}")
	public String deleteSubscribe(@PathVariable("subscribeId") Integer subscribeId) {

		imperialService.removeSubscribe(subscribeId);

		return "redirect:/admin/subscribes";
	}
	
}
