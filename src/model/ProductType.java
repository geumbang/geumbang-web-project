package model;

public class ProductType {
	
	private int typeId;
	private String typeName;
	
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	@Override
	public String toString() {
		return "ProductType [typeId=" + typeId + ", typeName=" + typeName + "]";
	}

}
