package ua.imperial.dao;

import java.util.List;

import ua.imperial.entities.Fact;
import ua.imperial.entities.Section;

public interface FactDAO {
	
	public void addSection(Section section);
	public void addFact(Fact fact);

	public Section getSection(Integer id);
	public Fact getFact(Integer id);
	
	public List<Section> listSection();
	public List<Fact> listFact();
	
	public void updateSection(Section section);
	public void updateFact(Fact fact);

	public void removeSection(Integer id);
	public void removeFact(Integer id);
	
}
