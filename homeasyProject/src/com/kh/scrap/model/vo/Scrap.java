package com.kh.scrap.model.vo;

public class Scrap {

  private int scrapno;
  private int productno;
  private int userno;
  
  public Scrap(){}

public Scrap(int scrapno, int productno, int userno) {
	super();
	this.scrapno = scrapno;
	this.productno = productno;
	this.userno = userno;
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

public int getUserno() {
	return userno;
}

public void setUserno(int userno) {
	this.userno = userno;
}

@Override
public String toString() {
	return "Scrap [scrapno=" + scrapno + ", productno=" + productno + ", userno=" + userno + "]";
}
  
  
	
	
	
}
