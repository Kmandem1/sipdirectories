package com.siptool.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "SIPs")
@Data
public class SIP {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Add this if you want to track a primary key

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getHardwareComponents() {
		return hardwareComponents;
	}

	public void setHardwareComponents(String hardwareComponents) {
		this.hardwareComponents = hardwareComponents;
	}

	public String getSoftwareComponents() {
		return softwareComponents;
	}

	public void setSoftwareComponents(String softwareComponents) {
		this.softwareComponents = softwareComponents;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public Double getCost() {
		return cost;
	}

	public void setCost(Double cost) {
		this.cost = cost;
	}

	public String getDependencies() {
		return dependencies;
	}

	public void setDependencies(String dependencies) {
		this.dependencies = dependencies;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	@Column(name = "Category")
    private String category;

    @Column(name = "Product Name")
    private String productName;

    @Column(name = "Hardware Components")
    private String hardwareComponents;

    @Column(name = "Software Components")
    private String softwareComponents;

    @Column(name = "Version")
    private String version;

    @Column(name = "Cost (USD)")
    private Double cost;

    @Column(name = "Dependencies")
    private String dependencies;

    @Column(name = "Supplier")
    private String supplier;

    @Column(name = "Manufacturer")
    private String manufacturer;

    @Column(name = "Summary", columnDefinition = "TEXT")
    private String summary;
}
