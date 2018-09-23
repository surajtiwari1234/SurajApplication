package com.slokam.SBIPojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Gdrop")
public class GeoUnitDropdown {
	
	@Id
	@GeneratedValue
	public Integer id;
	public String name;
	
	

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
	@Override
	public String toString() {
		return "GeoUnitDropdown [id=" + id + ", name=" + name + "]";
	}
	
	

}
