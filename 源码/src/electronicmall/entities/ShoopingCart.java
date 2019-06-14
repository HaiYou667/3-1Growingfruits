package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class ShoopingCart {
    private String scid;

    private String pdtid;

    private BigDecimal totalprice;

    private String pdtpicture;

    private String pdtname;

    private BigDecimal pdtnumber;

    private BigDecimal pdtsprice;

    private BigDecimal scstate;

    public String getScid() {
        return scid;
    }

    public void setScid(String scid) {
        this.scid = scid == null ? null : scid.trim();
    }

    public String getPdtid() {
        return pdtid;
    }

    public void setPdtid(String pdtid) {
        this.pdtid = pdtid == null ? null : pdtid.trim();
    }

    public BigDecimal getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(BigDecimal totalprice) {
        this.totalprice = totalprice;
    }

    public String getPdtpicture() {
        return pdtpicture;
    }

    public void setPdtpicture(String pdtpicture) {
        this.pdtpicture = pdtpicture == null ? null : pdtpicture.trim();
    }

    public String getPdtname() {
        return pdtname;
    }

    public void setPdtname(String pdtname) {
        this.pdtname = pdtname == null ? null : pdtname.trim();
    }

    public BigDecimal getPdtnumber() {
        return pdtnumber;
    }

    public void setPdtnumber(BigDecimal pdtnumber) {
        this.pdtnumber = pdtnumber;
    }

    public BigDecimal getPdtsprice() {
        return pdtsprice;
    }

    public void setPdtsprice(BigDecimal pdtsprice) {
        this.pdtsprice = pdtsprice;
    }

    public BigDecimal getScstate() {
        return scstate;
    }

    public void setScstate(BigDecimal scstate) {
        this.scstate = scstate;
    }
}