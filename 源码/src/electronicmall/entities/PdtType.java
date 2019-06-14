package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class PdtType {
    private String ptid;

    private String ptname;

    private BigDecimal ptstate;

    public String getPtid() {
        return ptid;
    }

    public void setPtid(String ptid) {
        this.ptid = ptid == null ? null : ptid.trim();
    }

    public String getPtname() {
        return ptname;
    }

    public void setPtname(String ptname) {
        this.ptname = ptname == null ? null : ptname.trim();
    }

    public BigDecimal getPtstate() {
        return ptstate;
    }

    public void setPtstate(BigDecimal ptstate) {
        this.ptstate = ptstate;
    }
}