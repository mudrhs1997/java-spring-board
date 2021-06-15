package board.vo;

public class boradVO {
	private String id;
	private String pwd;
	private String name;
	private String dip;
	private String memo;
	private String title;
	private int num;
	private String time;
	private int hit;
	

	public boradVO(String name, String dip)
	{
		this.name = name;
		this.dip = dip;
	}
	
	public boradVO(String name, String title, String memo)
	{
		this.name = name;
		this.title = title;
		this.memo = memo;
	}
	
	public boradVO(int num, String name, String title, String memo, String time, int hit)
	{
		this.num = num;
		this.name = name;
		this.title = title;
		this.memo = memo;
		this.time = time;
		this.hit = hit;
	}
	
	public boradVO(String id, String pwd, String name, String dip)
	{
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.dip = dip;
	}
	
	
	

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDip() {
		return dip;
	}
	public void setDip(String dip) {
		this.dip = dip;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
