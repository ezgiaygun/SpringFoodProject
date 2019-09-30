package model;
// Generated 26.Eyl.2019 23:23:24 by Hibernate Tools 5.2.12.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name = "cart")
public class Cart implements java.io.Serializable {

	private int oid;
	private String ostatus;
	private Date otime;
	private int pid;
	private int cid;

	public Cart() {
	}

	public Cart(int oid, String ostatus, Date otime, int pid, int cid) {
		this.oid = oid;
		this.ostatus = ostatus;
		this.otime = otime;
		this.pid = pid;
		this.cid = cid;
	}

	@Id

	@Column(name = "oid", unique = true, nullable = false)
	public int getOid() {
		return this.oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	@Column(name = "ostatus", nullable = false)
	public String getOstatus() {
		return this.ostatus;
	}

	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "otime", nullable = false, length = 19)
	public Date getOtime() {
		return this.otime;
	}

	public void setOtime(Date otime) {
		this.otime = otime;
	}

	@Column(name = "pid", nullable = false)
	public int getPid() {
		return this.pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Column(name = "cid", nullable = false)
	public int getCid() {
		return this.cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

}
