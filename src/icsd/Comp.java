package icsd;

public class Comp {

	public Comp(){
		
	}
	
String	strRestId,strRestName,strRestDesc,strRestImg;

public Comp(String strRestId, String strRestName, String strRestDesc, String strRestImg) {
	super();
	this.strRestId = strRestId;
	this.strRestName = strRestName;
	this.strRestDesc = strRestDesc;
	this.strRestImg = strRestImg;
}

@Override
public String toString() {
	return "Comp [strRestId=" + strRestId + ", strRestName=" + strRestName + ", strRestDesc=" + strRestDesc
			+ ", strRestImg=" + strRestImg + "]";
}

public String getStrRestId() {
	return strRestId;
}

public void setStrRestId(String strRestId) {
	this.strRestId = strRestId;
}

public String getStrRestName() {
	return strRestName;
}

public void setStrRestName(String strRestName) {
	this.strRestName = strRestName;
}

public String getStrRestDesc() {
	return strRestDesc;
}

public void setStrRestDesc(String strRestDesc) {
	this.strRestDesc = strRestDesc;
}

public String getStrRestImg() {
	return strRestImg;
}

public void setStrRestImg(String strRestImg) {
	this.strRestImg = strRestImg;
}

}
