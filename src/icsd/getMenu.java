package icsd;

public class getMenu {

	
	String strMenuId,strMenuName,strMenuClass,strMenuPrice,strMenuImg,strMenuDesc;
	
	public getMenu()
	{
		
	}

	public getMenu(String strMenuId, String strMenuName, String strMenuClass, String strMenuPrice, String strMenuImg,
			String strMenuDesc) {
		super();
		this.strMenuId = strMenuId;
		this.strMenuName = strMenuName;
		this.strMenuClass = strMenuClass;
		this.strMenuPrice = strMenuPrice;
		this.strMenuImg = strMenuImg;
		this.strMenuDesc = strMenuDesc;
	}

	@Override
	public String toString() {
		return "getMenu [strMenuId=" + strMenuId + ", strMenuName=" + strMenuName + ", strMenuClass=" + strMenuClass
				+ ", strMenuPrice=" + strMenuPrice + ", strMenuImg=" + strMenuImg + ", strMenuDesc=" + strMenuDesc
				+ "]";
	}

	public String getStrMenuId() {
		return strMenuId;
	}

	public void setStrMenuId(String strMenuId) {
		this.strMenuId = strMenuId;
	}

	public String getStrMenuName() {
		return strMenuName;
	}

	public void setStrMenuName(String strMenuName) {
		this.strMenuName = strMenuName;
	}

	public String getStrMenuClass() {
		return strMenuClass;
	}

	public void setStrMenuClass(String strMenuClass) {
		this.strMenuClass = strMenuClass;
	}

	public String getStrMenuPrice() {
		return strMenuPrice;
	}

	public void setStrMenuPrice(String strMenuPrice) {
		this.strMenuPrice = strMenuPrice;
	}

	public String getStrMenuImg() {
		return strMenuImg;
	}

	public void setStrMenuImg(String strMenuImg) {
		this.strMenuImg = strMenuImg;
	}

	public String getStrMenuDesc() {
		return strMenuDesc;
	}

	public void setStrMenuDesc(String strMenuDesc) {
		this.strMenuDesc = strMenuDesc;
	}
	

}