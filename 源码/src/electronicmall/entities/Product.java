package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Product {
    private String proid;

    private String proname;

    private BigDecimal proprice;

    private String proimg;

    private BigDecimal prostate;

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid == null ? null : proid.trim();
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public BigDecimal getProprice() {
        return proprice;
    }

    public void setProprice(BigDecimal proprice) {
        this.proprice = proprice;
    }

    public String getProimg() {
        return proimg;
    }

    public void setProimg(String proimg) {
        this.proimg = proimg == null ? null : proimg.trim();
    }

    public BigDecimal getProstate() {
        return prostate;
    }

    public void setProstate(BigDecimal prostate) {
        this.prostate = prostate;
    }
}