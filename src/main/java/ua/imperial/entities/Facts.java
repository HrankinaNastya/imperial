package ua.imperial.entities;

public class Facts {
	
	private Integer id;
	private byte[] description;
	private byte[] description_en;
	private byte[] content;
	private byte[] content_en;
	
	public Facts() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public byte[] getDescription() {
		return description;
	}

	public void setDescription(byte[] description) {
		this.description = description;
	}

	public byte[] getDescription_en() {
		return description_en;
	}

	public void setDescription_en(byte[] description_en) {
		this.description_en = description_en;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public byte[] getContent_en() {
		return content_en;
	}

	public void setContent_en(byte[] content_en) {
		this.content_en = content_en;
	}
	

}
