package com.skilldistillery.fishinglog.entities;


import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="catch_log")
public class CatchLog {
	// Fields
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	private String species;
	
	@Column(name="scientific_name")
	private String scientificName;
	
	@Column(name="weight_lbs")
	private String weightInLbs;
	
	@Column(name="length_inches")
	private String lengthInInches;
	
	@Column(name="bait_used")
	private String baitUsed;
	
	@Column(name="catch_and_release")
	private boolean catchAndRelease;
	
	@Column(name="date_caught")
	private LocalDate dateCaught;
	
	@Column(name="time_caught")
	private LocalTime timeCaught;
	
	private Double latitude;
	private Double longitude;
	private String notes;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="moon_phase")
	private String moonPhase;
	
	@Column(name="water_type")
	private String waterType;
	
	@Column(name="water_temp")
	private Double waterTemp;
	
	

	// Constructors
	public CatchLog() {
		super();
	}
	
	// Getters & Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getScientificName() {
		return scientificName;
	}

	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}

	public String getWeightInLbs() {
		return weightInLbs;
	}

	public void setWeightInLbs(String weightInLbs) {
		this.weightInLbs = weightInLbs;
	}

	public String getLengthInInches() {
		return lengthInInches;
	}

	public void setLengthInInches(String lengthInInches) {
		this.lengthInInches = lengthInInches;
	}

	public String getBaitUsed() {
		return baitUsed;
	}

	public void setBaitUsed(String baitUsed) {
		this.baitUsed = baitUsed;
	}

	public boolean isCatchAndRelease() {
		return catchAndRelease;
	}

	public void setCatchAndRelease(boolean catchAndRelease) {
		this.catchAndRelease = catchAndRelease;
	}

	public LocalDate getDateCaught() {
		return dateCaught;
	}

	public void setDateCaught(LocalDate dateCaught) {
		this.dateCaught = dateCaught;
	}

	public LocalTime getTimeCaught() {
		return timeCaught;
	}

	public void setTimeCaught(LocalTime timeCaught) {
		this.timeCaught = timeCaught;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getMoonPhase() {
		return moonPhase;
	}

	public void setMoonPhase(String moonPhase) {
		this.moonPhase = moonPhase;
	}

	public String getWaterType() {
		return waterType;
	}

	public void setWaterType(String waterType) {
		this.waterType = waterType;
	}

	public Double getWaterTemp() {
		return waterTemp;
	}

	public void setWaterTemp(Double waterTemp) {
		this.waterTemp = waterTemp;
	}

	// toString
	@Override
	public String toString() {
		return "Catch Log ID: " + id + "\nSpecies: " + species + "\nScientific Name: " + scientificName + "\nWeight in Pounds: "
				+ weightInLbs + "\nLength in Inches" + lengthInInches + "\nBait Used: " + baitUsed + "\nCatch and Release: "
				+ catchAndRelease + "\nDate Caught: " + dateCaught + "\nTime Caught: " + timeCaught + "\nMoon Phase: " + moonPhase + "\nWater Type: " + waterType
				+  "\nWater Temperature: " + waterTemp + "\nLocation: \n\tLatitude: " + latitude + " Longitude: " + longitude + "\nNotes: " + notes + "\nImage URL: " + imageUrl;
	}
	

}
