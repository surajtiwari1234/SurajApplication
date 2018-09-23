package com.slokam.SBIPojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="auditd")
public class Audit {

	@Id
	@GeneratedValue
	private Integer id;
	private String oldName;
	private String newName;
	private String userName;
	private String className;
	private String propertyName;
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getPropertyName() {
		return propertyName;
	}
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOldName() {
		return oldName;
	}
	public void setOldName(String oldName) {
		this.oldName = oldName;
	}
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Audit [id=" + id + ", oldName=" + oldName + ", newName=" + newName + ", userName=" + userName
				+ ", className=" + className + ", propertyName=" + propertyName + "]";
	}
	
	
	
}
