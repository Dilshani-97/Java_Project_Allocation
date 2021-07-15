package syzcogen.model;

import java.sql.Date;

public class Projects {

	private String pId;
	private String pTitle;
	private String pOwner;
	private Date sDate;
	private Date eDate;
	private Date dline;
	private String tasks;
	private int crew;
	private double eBudget;
	private double aBudget;
	private String reso;
	private String stat;
	private String info;
	
	public Projects() {
		
	}

	public Projects(String pId, String pTitle, String pOwner, Date sDate, Date eDate, Date dline, String tasks,
			int crew, double eBudget, double aBudget, String reso, String stat, String info) {
		super();
		this.pId = pId;
		this.pTitle = pTitle;
		this.pOwner = pOwner;
		this.sDate = sDate;
		this.eDate = eDate;
		this.dline = dline;
		this.tasks = tasks;
		this.crew = crew;
		this.eBudget = eBudget;
		this.aBudget = aBudget;
		this.reso = reso;
		this.stat = stat;
		this.info = info;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public String getpOwner() {
		return pOwner;
	}

	public void setpOwner(String pOwner) {
		this.pOwner = pOwner;
	}

	public Date getsDate() {
		return sDate;
	}

	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}

	public Date geteDate() {
		return eDate;
	}

	public void seteDate(Date eDate) {
		this.eDate = eDate;
	}

	public Date getDline() {
		return dline;
	}

	public void setDline(Date dline) {
		this.dline = dline;
	}

	public String getTasks() {
		return tasks;
	}

	public void setTasks(String tasks) {
		this.tasks = tasks;
	}

	public int getCrew() {
		return crew;
	}

	public void setCrew(int crew) {
		this.crew = crew;
	}

	public double geteBudget() {
		return eBudget;
	}

	public void seteBudget(double eBudget) {
		this.eBudget = eBudget;
	}

	public double getaBudget() {
		return aBudget;
	}

	public void setaBudget(double aBudget) {
		this.aBudget = aBudget;
	}

	public String getReso() {
		return reso;
	}

	public void setReso(String reso) {
		this.reso = reso;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
