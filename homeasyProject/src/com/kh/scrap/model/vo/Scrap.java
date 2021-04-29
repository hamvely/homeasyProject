package com.kh.scrap.model.vo;

public class Scrap {

  private int scrapno;
  private int productno;
 
  
  public Scrap(){}

public Scrap(int scrapno, int productno) {
	super();
	this.scrapno = scrapno;
	this.productno = productno;

}



public int getScrapno() {
	return scrapno;
}

public void setScrapno(int scrapno) {
	this.scrapno = scrapno;
}

public int getProductno() {
	return productno;
}

public void setProductno(int productno) {
	this.productno = productno;
}



@Override
public String toString() {
	return "Scrap [scrapno=" + scrapno + ", productno=" + productno +"]";
}
  
  
	
	
	
}
