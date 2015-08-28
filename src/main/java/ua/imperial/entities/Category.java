package ua.imperial.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORIES")
public class Category {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "NAME", unique = true, nullable = false)
	private String name;
	
	@Column(name = "NAME_EN", unique = true)
	private String name_en;
	
	@Column(name = "CONTENT")
	private String content;
	
	@Column(name = "CONTENT_EN")
	private String content_en;
	
	//@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	//private List<Subcategory> subcategories = new ArrayList<Subcategory>();

	public Category() {
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

	//public List<Subcategory> getSubcategories() {
	//	return subcategories;
	//}

	//public void setSubcategories(List<Subcategory> subcategories) {
	//	this.subcategories = subcategories;
	//}

	
}
