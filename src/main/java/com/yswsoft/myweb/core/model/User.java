package com.yswsoft.myweb.core.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table(name="abacus_system_user")
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String userName;
	private String userPassword;
	private int status;//用户状态
	private int loginStatus;
	private UserDetails ud;
	
	
	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	@Column(name="id")
	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}


	@Column(name="username")
	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}


	@Column(name="password")
	public String getUserPassword() {
		return userPassword;
	}



	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	@Column(name="status")
	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
	}


	@Column(name="login_status")
	public int getLoginStatus() {
		return loginStatus;
	}



	public void setLoginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}



	public UserDetails getUd() {
		return ud;
	}



	public void setUd(UserDetails ud) {
		this.ud = ud;
	}



	public static class UserDetails{
		private Long id;
		private Long uid;
		private int age;
		private String fastName;
		private String lastName;
		private String telPhone;
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public Long getUid() {
			return uid;
		}
		public void setUid(Long uid) {
			this.uid = uid;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public String getFastName() {
			return fastName;
		}
		public void setFastName(String fastName) {
			this.fastName = fastName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getTelPhone() {
			return telPhone;
		}
		public void setTelPhone(String telPhone) {
			this.telPhone = telPhone;
		}
		
	}
}
