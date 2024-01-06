package com.java.code;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class PenalisationModel {

	private String matricule;
	private String idexamplaie;
	 private Date datefinpenalisation;
	 
	 
	 
	 
	public PenalisationModel(String matricule, String idexamplaie, String datefinpenalisation) {
		
		this.matricule = matricule;
		this.idexamplaie = idexamplaie;
		
		 try {
             SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
             java.util.Date parsedDate = dateFormat.parse(datefinpenalisation);
             this.datefinpenalisation = new java.sql.Date(parsedDate.getTime());
         } catch (ParseException e) {
             throw new IllegalArgumentException("Format de date invalide.");
         }
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getIdexamplaie() {
		return idexamplaie;
	}
	public void setIdexamplaie(String idexamplaie) {
		this.idexamplaie = idexamplaie;
	}
	public Date getDatefinpenalisation() {
		return datefinpenalisation;
	}
	public void setDatefinpenalisation(Date datefinpenalisation) {
		this.datefinpenalisation = datefinpenalisation;
	}
}
