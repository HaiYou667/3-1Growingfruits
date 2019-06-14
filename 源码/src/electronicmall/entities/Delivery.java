package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Delivery {
    private String dlvid;

    private String dlvname;

    private BigDecimal dlvstate;

    public String getDlvid() {
        return dlvid;
    }

    public void setDlvid(String dlvid) {
        this.dlvid = dlvid == null ? null : dlvid.trim();
    }

    public String getDlvname() {
        return dlvname;
    }

    public void setDlvname(String dlvname) {
        this.dlvname = dlvname == null ? null : dlvname.trim();
    }

    public BigDecimal getDlvstate() {
        return dlvstate;
    }

    public void setDlvstate(BigDecimal dlvstate) {
        this.dlvstate = dlvstate;
    }
}