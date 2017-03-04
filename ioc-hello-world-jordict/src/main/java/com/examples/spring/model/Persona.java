package com.examples.spring.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the PRODUCTS database table.
 * 
 */
@Entity
@Table(name="PERSONAS")
public class Persona implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	private String nombre;
	private String apellidos;
	private String githubProfile;
	private String username;
	private Date fechaNacimiento;

	private String email;
	private String telefono;
	private String poblacion;
	private String dni;

	public Persona(String nombre, String apellidos, String githubProfile, String username, Date fechaNacimiento,
			String email, String telefono, String poblacion, String dni) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.githubProfile = githubProfile;
		this.username = username;
		this.fechaNacimiento = fechaNacimiento;
		this.email = email;
		this.telefono = telefono;
		this.poblacion = poblacion;
		this.dni = dni;
	}

	public Persona() {
		// TODO Auto-generated constructor stub
	}

	public Persona(String nombre, String apellidos, String githubProfile, String username) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.githubProfile = githubProfile;
		this.username = username;

	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getGithubProfile() {
		return githubProfile;
	}

	public void setGithubProfile(String githubProfile) {
		this.githubProfile = githubProfile;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getFecha_nacimiento() {
		return fechaNacimiento;
	}

	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fechaNacimiento = fecha_nacimiento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getPoblacion() {
		return poblacion;
	}

	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Persona [nombre=" + nombre + ", apellidos=" + apellidos + ", githubProfile=" + githubProfile
				+ ", username=" + username + ", fecha_nacimiento=" + fechaNacimiento + ", email=" + email
				+ ", telefono=" + telefono + ", poblacion=" + poblacion + ", dni=" + dni + "]";
	}

}