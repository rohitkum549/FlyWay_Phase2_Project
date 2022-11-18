package dao;

public class UserDetails 
{
	// id ,name, phone , user, password
	private int id;
	private String name;
	private int phone;
	private String uname;
	private String password;
	public UserDetails()
	{
		
	}
	public UserDetails(int id, String name, int phone, String uname, String password) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.uname = uname;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
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
	@Override
	public String toString() {
		return "UserDetails [id=" + id + ", name=" + name + ", phone=" + phone + ", uname=" + uname + ", password="
				+ password + "]";
	}
	
}
