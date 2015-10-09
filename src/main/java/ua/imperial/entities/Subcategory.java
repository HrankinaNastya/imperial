package ua.imperial.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "SUBCATEGORIES")
public class Subcategory {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "NAME", unique = true, nullable = false)
	private String name;
	
	@Column(name = "NAME_EN", unique = true)
	private String name_en;
	
	@Column(name = "NAME_ES", unique = true)
	private String name_es;
	
	@Column(name = "DESCRIPTION", unique = true)
	private String description;
	
	@Column(name = "DESCRIPTION_EN", unique = true)
	private String description_en;
	
	@Column(name = "DESCRIPTION_ES", unique = true)
	private String description_es;
	
	@Column(name = "CONTENT", unique = true)
	private String content;
	
	@Column(name = "CONTENT_EN", unique = true)
	private String content_en;
	
	@Column(name = "CONTENT_ES", unique = true)
	private String content_es;
	
	@ManyToOne(cascade={CascadeType.REFRESH}, fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Category category;

	public Subcategory() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getName_es() {
		return name_es;
	}

	public void setName_es(String name_es) {
		this.name_es = name_es;
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

	public String getDescription_es() {
		return description_es;
	}

	public void setDescription_es(String description_es) {
		this.description_es = description_es;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent_en() {
		return content_en;
	}

	public void setContent_en(String content_en) {
		this.content_en = content_en;
	}

	public String getContent_es() {
		return content_es;
	}

	public void setContent_es(String content_es) {
		this.content_es = content_es;
	}
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}


}
