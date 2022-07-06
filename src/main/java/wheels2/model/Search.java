package wheels2.model;

import org.springframework.web.multipart.MultipartFile;

public class Search {

	private String keyword;
	private String brand;
	private String model;
	private String location;
	private String modelYear;
	private String type;
	private String vehicleName;
	private String address;
	private int kmsDriven;
	private int mfgYear ;
	private String transmissionType;	
	private int askingPrice;
	private String colour;
	private String fuel;
	private MultipartFile vehicleImage;
	private String filePath;
	private String ownersName;
	private String ownersMobileNo;
	private String email;
	private String vehicleNo;

	
	public String getVehicleName() {
		return vehicleName;
	}
	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getKmsDriven() {
		return kmsDriven;
	}
	public void setKmsDriven(int kmsDriven) {
		this.kmsDriven = kmsDriven;
	}
	public int getMfgYear() {
		return mfgYear;
	}
	public void setMfgYear(int mfgYear) {
		this.mfgYear = mfgYear;
	}
	public String getTransmissionType() {
		return transmissionType;
	}
	public void setTransmissionType(String transmissionType) {
		this.transmissionType = transmissionType;
	}
	public int getAskingPrice() {
		return askingPrice;
	}
	public void setAskingPrice(int askingPrice) {
		this.askingPrice = askingPrice;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public MultipartFile getVehicleImage() {
		return vehicleImage;
	}
	public void setVehicleImage(MultipartFile vehicleImage) {
		this.vehicleImage = vehicleImage;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getOwnersName() {
		return ownersName;
	}
	public void setOwnersName(String ownersName) {
		this.ownersName = ownersName;
	}
	public String getOwnersMobileNo() {
		return ownersMobileNo;
	}
	public void setOwnersMobileNo(String ownersMobileNo) {
		this.ownersMobileNo = ownersMobileNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getModelYear() {
		return modelYear;
	}
	public void setModelYear(String modelYear) {
		this.modelYear = modelYear;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
