package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Returns {
    private String retid;

    private String sid;

    private String orderid;

    private String userid;

    private String rettime;

    private String retreason;

    private BigDecimal retstate;

    public String getRetid() {
        return retid;
    }

    public void setRetid(String retid) {
        this.retid = retid == null ? null : retid.trim();
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getRettime() {
        return rettime;
    }

    public void setRettime(String rettime) {
        this.rettime = rettime == null ? null : rettime.trim();
    }

    public String getRetreason() {
        return retreason;
    }

    public void setRetreason(String retreason) {
        this.retreason = retreason == null ? null : retreason.trim();
    }

    public BigDecimal getRetstate() {
        return retstate;
    }

    public void setRetstate(BigDecimal retstate) {
        this.retstate = retstate;
    }
}