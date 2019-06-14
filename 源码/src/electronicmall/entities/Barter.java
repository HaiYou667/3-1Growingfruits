package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Barter {
    private String barid;

    private String orderid;

    private String sid;

    private String userid;

    private String barreason;

    private String bartime;

    private BigDecimal barstate;

    public String getBarid() {
        return barid;
    }

    public void setBarid(String barid) {
        this.barid = barid == null ? null : barid.trim();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getBarreason() {
        return barreason;
    }

    public void setBarreason(String barreason) {
        this.barreason = barreason == null ? null : barreason.trim();
    }

    public String getBartime() {
        return bartime;
    }

    public void setBartime(String bartime) {
        this.bartime = bartime == null ? null : bartime.trim();
    }

    public BigDecimal getBarstate() {
        return barstate;
    }

    public void setBarstate(BigDecimal barstate) {
        this.barstate = barstate;
    }
}