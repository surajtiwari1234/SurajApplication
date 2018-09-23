package com.slokam.SBIPojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="PosilevelDrop")
public class PosilevelDrop {

	@Id
	@GeneratedValue
	public Integer id;
	@NotBlank
	public String posidrop;
	

	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPosidrop() {
		return posidrop;
	}
	public void setPosidrop(String posidrop) {
		this.posidrop = posidrop;
	}
	@Override
	public String toString() {
		return "PosilevelDrop [id=" + id + ", posidrop=" + posidrop + "]";
	}
	
	
}
