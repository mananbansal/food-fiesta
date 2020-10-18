package icsd;

public class Cart {
     
	public Cart(){
		
	}
	
String	strRestId,strMenuId,strMenuName,strMenuimg, strMenuPrice;

public Cart(String strRestId, String strMenuId, String strMenuName, String strMenuimg, String strMenuPrice) {
	super();
	this.strRestId = strRestId;
	this.strMenuId = strMenuId;
	this.strMenuName = strMenuName;
	this.strMenuimg = strMenuimg;
	this.strMenuPrice = strMenuPrice;
}

@Override
public String toString() {
	return "Cart [strRestId=" + strRestId + ", strMenuId=" + strMenuId + ", strMenuName=" + strMenuName
			+ ", strMenuimg=" + strMenuimg + ", strMenuPrice=" + strMenuPrice + "]";
}

public String getStrRestId() {
	return strRestId;
}

public void setStrRestId(String strRestId) {
	this.strRestId = strRestId;
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

public String getStrMenuimg() {
	return strMenuimg;
}

public void setStrMenuimg(String strMenuimg) {
	this.strMenuimg = strMenuimg;
}

public String getStrMenuPrice() {
	return strMenuPrice;
}

public void setStrMenuPrice(String strMenuPrice) {
	this.strMenuPrice = strMenuPrice;
}
}