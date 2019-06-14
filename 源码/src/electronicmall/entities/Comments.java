package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Comments {
    private String comid;

    private String pdtid;

    private String userid;

    private String comcontent;

    private String comdate;

    private BigDecimal comstate;

    public String getComid() {
        return comid;
    }

    public void setComid(String comid) {
        this.comid = comid == null ? null : comid.trim();
    }

    public String getPdtid() {
        return pdtid;
    }

    public void setPdtid(String pdtid) {
        this.pdtid = pdtid == null ? null : pdtid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getComcontent() {
        return comcontent;
    }

    public void setComcontent(String comcontent) {
        this.comcontent = comcontent == null ? null : comcontent.trim();
    }

    public String getComdate() {
        return comdate;
    }

    public void setComdate(String comdate) {
        this.comdate = comdate == null ? null : comdate.trim();
    }

    public BigDecimal getComstate() {
        return comstate;
    }

    public void setComstate(BigDecimal comstate) {
        this.comstate = comstate;
    }
}