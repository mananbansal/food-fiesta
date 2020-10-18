package icsd;

public class Rest {
	String strRestName,strRestDesc;

	public Rest(String strRestName, String strRestDesc) {
		super();
		this.strRestName = strRestName;
		this.strRestDesc = strRestDesc;
	}

	@Override
	public String toString() {
		return "Rest [strRestName=" + strRestName + ", strRestDesc=" + strRestDesc + "]";
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

}
