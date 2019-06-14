package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class NewsType {
    private String nstid;

    private String nstname;

    private BigDecimal nststate;

    public String getNstid() {
        return nstid;
    }

    public void setNstid(String nstid) {
        this.nstid = nstid == null ? null : nstid.trim();
    }

    public String getNstname() {
        return nstname;
    }

    public void setNstname(String nstname) {
        this.nstname = nstname == null ? null : nstname.trim();
    }

    public BigDecimal getNststate() {
        return nststate;
    }

    public void setNststate(BigDecimal nststate) {
        this.nststate = nststate;
    }
}