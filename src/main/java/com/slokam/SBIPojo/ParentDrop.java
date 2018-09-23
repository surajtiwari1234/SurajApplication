package com.slokam.SBIPojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="parentdrop")
public class ParentDrop {

	@Id
	@GeneratedValue
	public Integer id;
	public String parentname;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getParentname() {
		return parentname;
	}
	public void setParentname(String parentname) {
		this.parentname = parentname;
	}
	@Override
	public String toString() {
		return "ParentDrop [id=" + id + ", parentname=" + parentname + "]";
	}

	
}
