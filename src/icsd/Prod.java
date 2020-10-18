package icsd;

public class Prod {

	public Prod(){
		
	}

String	strRestid,strMenuId,strMenuNm,strMenuDesc,strMenuPrice,strMenuImg;

public Prod(String strRestid, String strMenuId, String strMenuNm, String strMenuDesc, String strMenuPrice,
		String strMenuImg) {
	super();
	this.strRestid = strRestid;
	this.strMenuId = strMenuId;
	this.strMenuNm = strMenuNm;
	this.strMenuDesc = strMenuDesc;
	this.strMenuPrice = strMenuPrice;
	this.strMenuImg = strMenuImg;
}

@Override
public String toString() {
	return "Prod [strRestid=" + strRestid + ", strMenuId=" + strMenuId + ", strMenuNm=" + strMenuNm + ", strMenuDesc="
			+ strMenuDesc + ", strMenuPrice=" + strMenuPrice + ", strMenuImg=" + strMenuImg + "]";
}

public String getStrRestid() {
	return strRestid;
}

public void setStrRestid(String strRestid) {
	this.strRestid = strRestid;
}

public String getStrMenuId() {
	return strMenuId;
}

public void setStrMenuId(String strMenuId) {
	this.strMenuId = strMenuId;
}

public String getStrMenuNm() {
	return strMenuNm;
}

public void setStrMenuNm(String strMenuNm) {
	this.strMenuNm = strMenuNm;
}

public String getStrMenuDesc() {
	return strMenuDesc;
}

public void setStrMenuDesc(String strMenuDesc) {
	this.strMenuDesc = strMenuDesc;
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
	
}
