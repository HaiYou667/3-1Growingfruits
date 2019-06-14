package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Seller {
    private String sid;

    private String sname;

    private String spwd;

    private String sphone;

    private String semail;

    private String struename;

    private String ssex;

    private BigDecimal sage;

    private BigDecimal sstate;

    private String saddr;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd == null ? null : spwd.trim();
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone == null ? null : sphone.trim();
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail == null ? null : semail.trim();
    }

    public String getStruename() {
        return struename;
    }

    public void setStruename(String struename) {
        this.struename = struename == null ? null : struename.trim();
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex == null ? null : ssex.trim();
    }

    public BigDecimal getSage() {
        return sage;
    }

    public void setSage(BigDecimal sage) {
        this.sage = sage;
    }

    public BigDecimal getSstate() {
        return sstate;
    }

    public void setSstate(BigDecimal sstate) {
        this.sstate = sstate;
    }

    public String getSaddr() {
        return saddr;
    }

    public void setSaddr(String saddr) {
        this.saddr = saddr == null ? null : saddr.trim();
    }
}