package vo;

public class SignupVo {
private String fn,ln,email,un_sign,pass_sign;
private int id;
private Long phone;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFn() {
	return fn;
}
public void setFn(String fn) {
	this.fn = fn;
}
public String getLn() {
	return ln;
}
public void setLn(String ln) {
	this.ln = ln;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUn_sign() {
	return un_sign;
}
public void setUn_sign(String un_sign) {
	this.un_sign = un_sign;
}
public String getPass_sign() {
	return pass_sign;
}
public void setPass_sign(String pass_sign) {
	this.pass_sign = pass_sign;
}
public Long getPhone() {
	return phone;
}
public void setPhone(Long phone) {
	this.phone = phone;
}

}
