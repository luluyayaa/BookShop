package com.lulu.pojo;

import java.util.Date;

/**
 * 封装类
 */
public class Book {
    private Integer bkId;
    private String bkName;
    private String bkAuthor;
    private String bkCountry;
    private String bkType;
    private Integer bkPrice;

    private Integer  bkStockNum;
    private String bkSellDate;
    private String  bkPicName;
    private String bkStatus;
    private String bkDesc;

    public Book() {
    }

    public Book(Integer bkId, String bkName, String bkAuthor, String bkCountry, String bkType, Integer bkPrice, Integer bkStockNum, String bkSellDate, String bkPicName, String bkStatus, String bkDesc) {
        this.bkId = bkId;
        this.bkName = bkName;
        this.bkAuthor = bkAuthor;
        this.bkCountry = bkCountry;
        this.bkType = bkType;
        this.bkPrice = bkPrice;
        this.bkStockNum = bkStockNum;
        this.bkSellDate = bkSellDate;
        this.bkPicName = bkPicName;
        this.bkStatus = bkStatus;
        this.bkDesc = bkDesc;
    }


    @Override
    public String toString() {
        return "Book{" +
                "bkId=" + bkId +
                ", bkName='" + bkName + '\'' +
                ", bkAuthor='" + bkAuthor + '\'' +
                ", bkCountry='" + bkCountry + '\'' +
                ", bkType='" + bkType + '\'' +
                ", bkPrice=" + bkPrice +
                ", bkStockNum=" + bkStockNum +
                ", bkSellDate=" + bkSellDate +
                ", bkPicName=" + bkPicName +
                ", bkStatus='" + bkStatus + '\'' +
                ", bkdesc='" + bkDesc + '\'' +
                '}';
    }

    public Integer getBkId() {
        return bkId;
    }

    public void setBkId(Integer bkId) {
        this.bkId = bkId;
    }

    public String getBkName() {
        return bkName;
    }

    public void setBkName(String bkName) {
        this.bkName = bkName;
    }

    public String getBkAuthor() {
        return bkAuthor;
    }

    public void setBkAuthor(String bkAuthor) {
        this.bkAuthor = bkAuthor;
    }

    public String getBkCountry() {
        return bkCountry;
    }

    public void setBkCountry(String bkCountry) {
        this.bkCountry = bkCountry;
    }

    public String getBkType() {
        return bkType;
    }

    public void setBkType(String bkType) {
        this.bkType = bkType;
    }

    public Integer getBkPrice() {
        return bkPrice;
    }

    public void setBkPrice(Integer bkPrice) {
        this.bkPrice = bkPrice;
    }

    public Integer getBkStockNum() {
        return bkStockNum;
    }

    public void setBkStockNum(Integer bkStockNum) {
        this.bkStockNum = bkStockNum;
    }

    public String getBkSellDate() {
        return bkSellDate;
    }

    public void setBkSellDate(String bkSellDate) {
        this.bkSellDate = bkSellDate;
    }

    public String getBkPicName() {
        return bkPicName;
    }

    public void setBkPicName(String bkPicName) {
        this.bkPicName = bkPicName;
    }

    public String getBkStatus() {
        return bkStatus;
    }

    public void setBkStatus(String bkStatus) {
        this.bkStatus = bkStatus;
    }

    public String getBkDesc() {
        return bkDesc;
    }

    public void setBkDesc(String bkDesc) {
        this.bkDesc = bkDesc;
    }

}

