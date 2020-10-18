package icsd;

public class getOrders {
	
	
	String strUnm,strRestId,strMenuid,strMenuName,strMenuImg,strRestName,strAddress,strArea,strZip,strContact;
	int strMenuPrice,strMenuQty;
	
	public getOrders()
	{
		
	}
	
	
	public String getStrUnm() {
		return strUnm;
	}
	public void setStrUnm(String strUnm) {
		this.strUnm = strUnm;
	}
	public String getStrRestId() {
		return strRestId;
	}
	public void setStrRestId(String strRestId) {
		this.strRestId = strRestId;
	}
	public String getStrMenuid() {
		return strMenuid;
	}
	public void setStrMenuid(String strMenuid) {
		this.strMenuid = strMenuid;
	}
	public String getStrMenuName() {
		return strMenuName;
	}
	public void setStrMenuName(String strMenuName) {
		this.strMenuName = strMenuName;
	}
	public String getStrMenuImg() {
		return strMenuImg;
	}
	public void setStrMenuImg(String strMenuImg) {
		this.strMenuImg = strMenuImg;
	}
	public String getStrRestName() {
		return strRestName;
	}
	public void setStrRestName(String strRestName) {
		this.strRestName = strRestName;
	}
	public String getStrAddress() {
		return strAddress;
	}
	public void setStrAddress(String strAddress) {
		this.strAddress = strAddress;
	}
	public String getStrArea() {
		return strArea;
	}
	public void setStrArea(String strArea) {
		this.strArea = strArea;
	}
	public String getStrZip() {
		return strZip;
	}
	public void setStrZip(String strZip) {
		this.strZip = strZip;
	}
	public String getStrContact() {
		return strContact;
	}
	public void setStrContact(String strContact) {
		this.strContact = strContact;
	}
	public int getStrMenuPrice() {
		return strMenuPrice;
	}
	public void setStrMenuPrice(int strMenuPrice) {
		this.strMenuPrice = strMenuPrice;
	}
	public int getStrMenuQty() {
		return strMenuQty;
	}
	public void setStrMenuQty(int strMenuQty) {
		this.strMenuQty = strMenuQty;
	}
	@Override
	public String toString() {
		return "getOrders [strUnm=" + strUnm + ", strRestId=" + strRestId + ", strMenuid=" + strMenuid
				+ ", strMenuName=" + strMenuName + ", strMenuImg=" + strMenuImg + ", strRestName=" + strRestName
				+ ", strAddress=" + strAddress + ", strArea=" + strArea + ", strZip=" + strZip + ", strContact="
				+ strContact + ", strMenuPrice=" + strMenuPrice + ", strMenuQty=" + strMenuQty + "]";
	}
	public getOrders(String strUnm, String strRestId, String strMenuid, String strMenuName, String strMenuImg,
			String strRestName, String strAddress, String strArea, String strZip, String strContact, int strMenuPrice,
			int strMenuQty) {
		super();
		this.strUnm = strUnm;
		this.strRestId = strRestId;
		this.strMenuid = strMenuid;
		this.strMenuName = strMenuName;
		this.strMenuImg = strMenuImg;
		this.strRestName = strRestName;
		this.strAddress = strAddress;
		this.strArea = strArea;
		this.strZip = strZip;
		this.strContact = strContact;
		this.strMenuPrice = strMenuPrice;
		this.strMenuQty = strMenuQty;
	}
	
	
}
