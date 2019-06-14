package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class OrderDetail {
    private String odid;

    private String pdtid;

    private String orderid;

    private String oname;

    private BigDecimal omoney;

    private String ostime;

    private String oetime;

    private BigDecimal onum;

    private String osmoney;

    private BigDecimal ostate;

    public String getOdid() {
        return odid;
    }

    public void setOdid(String odid) {
        this.odid = odid == null ? null : odid.trim();
    }

    public String getPdtid() {
        return pdtid;
    }

    public void setPdtid(String pdtid) {
        this.pdtid = pdtid == null ? null : pdtid.trim();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname == null ? null : oname.trim();
    }

    public BigDecimal getOmoney() {
        return omoney;
    }

    public void setOmoney(BigDecimal omoney) {
        this.omoney = omoney;
    }

    public String getOstime() {
        return ostime;
    }

    public void setOstime(String ostime) {
        this.ostime = ostime == null ? null : ostime.trim();
    }

    public String getOetime() {
        return oetime;
    }

    public void setOetime(String oetime) {
        this.oetime = oetime == null ? null : oetime.trim();
    }

    public BigDecimal getOnum() {
        return onum;
    }

    public void setOnum(BigDecimal onum) {
        this.onum = onum;
    }

    public String getOsmoney() {
        return osmoney;
    }

    public void setOsmoney(String osmoney) {
        this.osmoney = osmoney == null ? null : osmoney.trim();
    }

    public BigDecimal getOstate() {
        return ostate;
    }

    public void setOstate(BigDecimal ostate) {
        this.ostate = ostate;
    }
}