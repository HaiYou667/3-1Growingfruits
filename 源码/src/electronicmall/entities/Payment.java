package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Payment {
    private String payid;

    private String payname;

    private BigDecimal paystate;

    public String getPayid() {
        return payid;
    }

    public void setPayid(String payid) {
        this.payid = payid == null ? null : payid.trim();
    }

    public String getPayname() {
        return payname;
    }

    public void setPayname(String payname) {
        this.payname = payname == null ? null : payname.trim();
    }

    public BigDecimal getPaystate() {
        return paystate;
    }

    public void setPaystate(BigDecimal paystate) {
        this.paystate = paystate;
    }
}