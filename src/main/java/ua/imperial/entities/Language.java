package ua.imperial.entities;

import java.util.Locale;

public class Language {
	
	int num;

	public Language(Locale locale) {
		setLang(locale.getDisplayLanguage());
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public void setLang(String loc){
		
		if (loc.equals("английский")){
			setNum(1);
		}
		else if (loc.equals("испанский")){
			setNum(2);
		}
		else{
			setNum(0);
		}
		
	}

}
