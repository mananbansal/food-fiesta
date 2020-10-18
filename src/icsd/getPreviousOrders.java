package icsd;

public class getPreviousOrders {
	
	public getPreviousOrders()
	{
		
	}
	
	String strMenuId,strMenuName,strBillNo,strMenuPrice,strUName,strQty;

	public getPreviousOrders(String strMenuId, String strMenuName, String strBillNo, String strMenuPrice,
			String strUName, String strQty) {
		super();
		this.strMenuId = strMenuId;
		this.strMenuName = strMenuName;
		this.strBillNo = strBillNo;
		this.strMenuPrice = strMenuPrice;
		this.strUName = strUName;
		this.strQty = strQty;
	}

	@Override
	public String toString() {
		return "getPreviousOrders [strMenuId=" + strMenuId + ", strMenuName=" + strMenuName + ", strBillNo=" + strBillNo
				+ ", strMenuPrice=" + strMenuPrice + ", strUName=" + strUName + ", strQty=" + strQty + "]";
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

	public String getStrBillNo() {
		return strBillNo;
	}

	public void setStrBillNo(String strBillNo) {
		this.strBillNo = strBillNo;
	}

	public String getStrMenuPrice() {
		return strMenuPrice;
	}

	public void setStrMenuPrice(String strMenuPrice) {
		this.strMenuPrice = strMenuPrice;
	}

	public String getStrUName() {
		return strUName;
	}

	public void setStrUName(String strUName) {
		this.strUName = strUName;
	}

	public String getStrQty() {
		return strQty;
	}

	public void setStrQty(String strQty) {
		this.strQty = strQty;
	}

}
