package icsd;

public class getList {
	
	String strMenuName,strMenuDesc,strMenuclass,strMenuPrice,strMenuType;
	
	public getList()
	{
		
	}

	public getList(String strMenuName, String strMenuDesc, String strMenuclass, String strMenuPrice,
			String strMenuType) {
		super();
		this.strMenuName = strMenuName;
		this.strMenuDesc = strMenuDesc;
		this.strMenuclass = strMenuclass;
		this.strMenuPrice = strMenuPrice;
		this.strMenuType = strMenuType;
	}

	@Override
	public String toString() {
		return "getList [strMenuName=" + strMenuName + ", strMenuDesc=" + strMenuDesc + ", strMenuclass=" + strMenuclass
				+ ", strMenuPrice=" + strMenuPrice + ", strMenuType=" + strMenuType + "]";
	}

	public String getStrMenuName() {
		return strMenuName;
	}

	public void setStrMenuName(String strMenuName) {
		this.strMenuName = strMenuName;
	}

	public String getStrMenuDesc() {
		return strMenuDesc;
	}

	public void setStrMenuDesc(String strMenuDesc) {
		this.strMenuDesc = strMenuDesc;
	}

	public String getStrMenuclass() {
		return strMenuclass;
	}

	public void setStrMenuclass(String strMenuclass) {
		this.strMenuclass = strMenuclass;
	}

	public String getStrMenuPrice() {
		return strMenuPrice;
	}

	public void setStrMenuPrice(String strMenuPrice) {
		this.strMenuPrice = strMenuPrice;
	}

	public String getStrMenuType() {
		return strMenuType;
	}

	public void setStrMenuType(String strMenuType) {
		this.strMenuType = strMenuType;
	}

}
