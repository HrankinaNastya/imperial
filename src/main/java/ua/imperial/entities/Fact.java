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
@Table(name = "FACTS")
public class Fact {
	
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne(cascade={CascadeType.REFRESH}, fetch = FetchType.EAGER)
	@JoinColumn(name = "section_id")
	private Section section;
	
	@Column(name = "DESCRIPTION", unique = true, nullable=false)
	private String description;
	
	@Column(name = "DESCRIPTION_EN", unique = true, nullable=false)
	private String description_en;
	
	@Column(name = "CONTENT", unique = true, nullable=false)
	private String content;
	
	@Column(name = "CONTENT_EN", unique = true, nullable=false)
	private String content_en;
	
	public Fact() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
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

	
}
