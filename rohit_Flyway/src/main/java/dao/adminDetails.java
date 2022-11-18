package dao;

public class adminDetails 
{
	private String uname;
	private String password;
	private int id;
	public adminDetails()
	{
		
	}
	public adminDetails(String uname, String password, int id) {
		super();
		this.uname = uname;
		this.password = password;
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "adminDao [uname=" + uname + ", password=" + password + ", id=" + id + "]";
	}
	
}
