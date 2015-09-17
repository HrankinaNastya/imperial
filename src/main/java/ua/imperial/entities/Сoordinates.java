package ua.imperial.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COORDINATES")
public class Ñoordinates {
	
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "CITY", unique = true, nullable = false)
	private String city;
	
	@Column(name = "CITY_EN", unique = true, nullable = false)
	private String city_en;
	
	@Column(name = "LATITUDE", nullable = false)
	private String latitude;
	
	@Column(name = "LONGITUDE", nullable = false)
	private String longitude;
	
	@Column(name = "ADDRESS", nullable = false)
	private String address;
	
	@Column(name = "ADDRESS_EN", nullable = false)
	private String address_en;
	
	@Column(name = "PHONE", nullable = false)
	private String phone;
	
	@Column(name = "SKYPE", nullable = false)
	private String skype;
	
	@Column(name = "EMAIL", nullable = false)
	private String email;

	public Ñoordinates() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity_en() {
		return city_en;
	}

	public void setCity_en(String city_en) {
		this.city_en = city_en;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress_en() {
		return address_en;
	}

	public void setAddress_en(String address_en) {
		this.address_en = address_en;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSkype() {
		return skype;
	}

	public void setSkype(String skype) {
		this.skype = skype;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

}
