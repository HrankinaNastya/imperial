package ua.imperial.entities;

public class Navigation {
	
	private Integer id;
	private Integer start;
	private Integer end;
	
	public Navigation() {
		super();
	}
	
	public Navigation(Integer id, Integer start, Integer end) {
		super();
		this.id = id;
		this.start = start;
		this.end = end;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getEnd() {
		return end;
	}

	public void setEnd(Integer end) {
		this.end = end;
	}
	

}
