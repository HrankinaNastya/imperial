package ua.imperial.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	
	@Column(name = "DESCRIPTION", unique = true, nullable=false)
	private String description;
	
	@Column(name = "DESCRIPTION_EN", unique = true, nullable=false)
	private String description_en;
	
	@Column(name = "CONTENT", unique = true, nullable=false)
	private String content;
	
	@Column(name = "CONTENT_EN", unique = true, nullable=false)
	private String content_en;
	
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}



}
