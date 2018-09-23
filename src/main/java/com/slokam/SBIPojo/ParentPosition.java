package com.slokam.SBIPojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="parentpositon")
public class ParentPosition {
	
	@Id
	@GeneratedValue
	public Integer id;
	public String parentposition;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getParentposition() {
		return parentposition;
	}
	public void setParentposition(String parentposition) {
		this.parentposition = parentposition;
	}
	@Override
	public String toString() {
		return "ParentPosition [id=" + id + ", parentposition=" + parentposition + "]";
	}

	
	
}
