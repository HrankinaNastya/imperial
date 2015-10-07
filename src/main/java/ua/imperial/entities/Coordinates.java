package ua.imperial.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COORDINATES")
public class Coordinates {
	
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "CITY", unique = true, nullable = false)
	private String city;
	
	@Column(name = "CITY_EN", unique = true, nullable = false)
	private String city_en;
	
	@Column(name = "CITY_ES", unique = true, nullable = false)
	private String city_es;
	
	@Column(name = "LATITUDE", nullable = false)
	private String latitude;
	
	@Column(name = "LONGITUDE", nullable = false)
	private String longitude;
	
	@Column(name = "ADDRESS", nullable = false)
	private String address;
	
	@Column(name = "ADDRESS_EN", nullable = false)
	private String address_en;
	
	@Column(name = "ADDRESS_ES", nullable = false)
	private String address_es;
	
	@Column(name = "PHONE", nullable = false)
	private String phone;
	
	@Column(name = "SKYPE", nullable = false)
	private String skype;
	
	@Column(name = "EMAIL", nullable = false)
	private String email;

	public Coordinates() {
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

	public String getCity_es() {
		return city_es;
	}

	public void setCity_es(String city_es) {
		this.city_es = city_es;
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

	public String getAddress_es() {
		return address_es;
	}

	public void setAddress_es(String address_es) {
		this.address_es = address_es;
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
