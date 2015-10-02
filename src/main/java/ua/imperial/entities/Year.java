package ua.imperial.entities;

public class Year {
	
	private Integer currentYear;
     
    public Year() {
		super();
		setCurrentYear();
	}

	public void setCurrentYear()
    {
        java.util.Calendar calendar = java.util.Calendar.getInstance(java.util.TimeZone.getDefault(), java.util.Locale.getDefault());
        calendar.setTime(new java.util.Date());
        currentYear = calendar.get(java.util.Calendar.YEAR);
    }

	public Integer getCurrentYear() {
		return currentYear;
	}

}
