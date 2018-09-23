package com.slokam.SBIPojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="human")
public class HumanPojo {

	@Id
	@GeneratedValue
	public Integer id;
	public String text;
	public String text2;
	public String text3;
	public String text8;
	public String text9;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	public String getText3() {
		return text3;
	}
	public void setText3(String text3) {
		this.text3 = text3;
	}
	public String getText8() {
		return text8;
	}
	public void setText8(String text8) {
		this.text8 = text8;
	}
	public String getText9() {
		return text9;
	}
	public void setText9(String text9) {
		this.text9 = text9;
	}
	@Override
	public String toString() {
		return "HumanPojo [id=" + id + ", text=" + text + ", text2=" + text2 + ", text3=" + text3 + ", text8=" + text8
				+ ", text9=" + text9 + "]";
	}
	
	
	
}
