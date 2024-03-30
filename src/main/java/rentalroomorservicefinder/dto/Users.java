package rentalroomorservicefinder.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
    private String firstnName;
	private String lastName;
	private String email;
	private String password;
	private String cnfpassword;
	private long phno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstnName() {
		return firstnName;
	}
	public void setFirstnName(String firstnName) {
		this.firstnName = firstnName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getcnfpassword() {
		return cnfpassword;
	}
	public void setcnfpassword(String cnfpassword) {
		this.cnfpassword = cnfpassword;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	@Override
	public String toString() {
		return "LogindetailsDto [id=" + id + ", firstnName=" + firstnName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + ", conf_String=" + cnfpassword + ", phno=" + phno + "]";
	}
	
	
	
}

