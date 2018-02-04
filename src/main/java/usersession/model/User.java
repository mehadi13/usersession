package usersession.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class User {

	@Size(max = 20, min = 3, message = "Name entered is invalid. It must be between {2} and {1} characters.")
	private String name;

	@Email(message = "Invalid email! Please enter valid email.")
	private String email;
	
	@Size(max = 20, min = 6, message = "It must be between {1} and {2} characters.")
	private String password;
	
	@NotEmpty(message = "Select gender.")
	private String gender;
	
	@NotEmpty(message = "Enter your address")
	private String address;
	
	private int id;
	
	@NotEmpty(message = "Select a role")
	private String role;
	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}