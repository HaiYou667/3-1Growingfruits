package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class SysFunction {
    private Integer funid;

    private String funname;

    private BigDecimal funpid;

    private String funurl;

    private BigDecimal funstate;

    public Integer getFunid() {
        return funid;
    }

    public void setFunid(Integer funid) {
        this.funid = funid;
    }

    public String getFunname() {
        return funname;
    }

    public void setFunname(String funname) {
        this.funname = funname == null ? null : funname.trim();
    }

    public BigDecimal getFunpid() {
        return funpid;
    }

    public void setFunpid(BigDecimal funpid) {
        this.funpid = funpid;
    }

    public String getFunurl() {
        return funurl;
    }

    public void setFunurl(String funurl) {
        this.funurl = funurl == null ? null : funurl.trim();
    }

    public BigDecimal getFunstate() {
        return funstate;
    }

    public void setFunstate(BigDecimal funstate) {
        this.funstate = funstate;
    }
}