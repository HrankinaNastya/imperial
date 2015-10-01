package ua.imperial.entities;

public class SearchResult {
	
	private Integer id_parent;
	private String name;
	private String name_en;
	private String description;
	private String description_en;
	private String path;
	
	public SearchResult() {
		super();
	}
	
	public SearchResult(News news) {
		this.id_parent = news.getId();
		this.name = news.getName();
		if (news.getContent().length()>200){
			this.description = news.getContent().substring(0, 200).concat("...");
		} else{
			this.description = news.getContent();
		}
		this.path = "/news/".concat(id_parent.toString());
	}
	
	public SearchResult(Category category) {
		this.id_parent = category.getId();
		this.name = category.getName();
		if (category.getContent().length()>200){
			this.description = category.getContent().substring(0, 200).concat("...");
		} else{
			this.description = category.getContent();
		}
		this.path = category.getPath();
		
	}
	
	public SearchResult(Subcategory subcategory) {
		this.id_parent = subcategory.getId();
		this.name = subcategory.getName();
		if (subcategory.getContent().length()>200){
			this.description = subcategory.getContent().substring(0, 200).concat("...");
		} else{
			this.description = subcategory.getContent();
		}
	}

	public Integer getId_parent() {
		return id_parent;
	}

	public void setId_parent(Integer id_parent) {
		this.id_parent = id_parent;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName_en() {
		return name_en;
	}
	
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDescription_en() {
		return description_en;
	}
	
	public void setDescription_en(String description_en) {
		this.description_en = description_en;
	}
	
	public String getPath() {
		return path;
	}
	
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
