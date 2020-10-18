package icsd;

public class getCart {
	String strUnm,strRestId,strMenuid,strMenuName,strMenuQty,strMenuImg,strMenuPrice, strRestName;

	public getCart(String strUnm, String strRestId, String strMenuid, String strMenuName, String strMenuQty,
			String strMenuImg, String strMenuPrice, String strRestName) {
		super();
		this.strUnm = strUnm;
		this.strRestId = strRestId;
		this.strMenuid = strMenuid;
		this.strMenuName = strMenuName;
		this.strMenuQty = strMenuQty;
		this.strMenuImg = strMenuImg;
		this.strMenuPrice = strMenuPrice;
		this.strRestName = strRestName;
	}

	@Override
	public String toString() {
		return "getCart [strUnm=" + strUnm + ", strRestId=" + strRestId + ", strMenuid=" + strMenuid + ", strMenuName="
				+ strMenuName + ", strMenuQty=" + strMenuQty + ", strMenuImg=" + strMenuImg + ", strMenuPrice="
				+ strMenuPrice + ", strRestName=" + strRestName + "]";
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

	public String getStrMenuQty() {
		return strMenuQty;
	}

	public void setStrMenuQty(String strMenuQty) {
		this.strMenuQty = strMenuQty;
	}

	public String getStrMenuImg() {
		return strMenuImg;
	}

	public void setStrMenuImg(String strMenuImg) {
		this.strMenuImg = strMenuImg;
	}

	public String getStrMenuPrice() {
		return strMenuPrice;
	}

	public void setStrMenuPrice(String strMenuPrice) {
		this.strMenuPrice = strMenuPrice;
	}

	public String getStrRestName() {
		return strRestName;
	}

	public void setStrRestName(String strRestName) {
		this.strRestName = strRestName;
	}
	
	
}