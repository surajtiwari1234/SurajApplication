package com.slokam.SBIPojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="positions")
public class PositionType implements  ApplicationAudittable{
	
	@Id
	@GeneratedValue
	private Integer id;
	@OneToOne
	@JoinColumn(name="gid")
	private GeoUnitDropdown geodrop;
	@NotNull
	private Long posicode;
	@NotBlank
	@Pattern(regexp="^[a-z]{3}[0-9]{2}[A-z]{3}")
	private String posiname;
	@OneToOne
	@JoinColumn(name="pid")
	@Valid
	private PosilevelDrop positiondrop;
	@OneToOne
	@JoinColumn(name="parid")
	private ParentDrop parentdrop;
	@OneToOne
	@JoinColumn(name="prntid")
	private ParentPosition parentposition;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public GeoUnitDropdown getGeodrop() {
		return geodrop;
	}
	public void setGeodrop(GeoUnitDropdown geodrop) {
		this.geodrop = geodrop;
	}
	public Long getPosicode() {
		return posicode;
	}
	public void setPosicode(Long posicode) {
		this.posicode = posicode;
	}
	public String getPosiname() {
		return posiname;
	}
	public void setPosiname(String posiname) {
		this.posiname = posiname;
	}
	public PosilevelDrop getPositiondrop() {
		return positiondrop;
	}
	public void setPositiondrop(PosilevelDrop positiondrop) {
		this.positiondrop = positiondrop;
	}
	public ParentDrop getParentdrop() {
		return parentdrop;
	}
	public void setParentdrop(ParentDrop parentdrop) {
		this.parentdrop = parentdrop;
	}
	public ParentPosition getParentposition() {
		return parentposition;
	}
	public void setParentposition(ParentPosition parentposition) {
		this.parentposition = parentposition;
	}
	@Override
	public String toString() {
		return "PositionType [id=" + id + ", geodrop=" + geodrop + ", posicode=" + posicode + ", posiname=" + posiname
				+ ", positiondrop=" + positiondrop + ", parentdrop=" + parentdrop + ", parentposition=" + parentposition
				+ "]";
	}
	
	
	
	

}
