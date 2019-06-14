package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class News {
    private String newsid;

    private String nstid;

    private String newstitle;

    private String newscontent;

    private String newswriter;

    private String newsdate;

    private BigDecimal newsstate;

    public String getNewsid() {
        return newsid;
    }

    public void setNewsid(String newsid) {
        this.newsid = newsid == null ? null : newsid.trim();
    }

    public String getNstid() {
        return nstid;
    }

    public void setNstid(String nstid) {
        this.nstid = nstid == null ? null : nstid.trim();
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle == null ? null : newstitle.trim();
    }

    public String getNewscontent() {
        return newscontent;
    }

    public void setNewscontent(String newscontent) {
        this.newscontent = newscontent == null ? null : newscontent.trim();
    }

    public String getNewswriter() {
        return newswriter;
    }

    public void setNewswriter(String newswriter) {
        this.newswriter = newswriter == null ? null : newswriter.trim();
    }

    public String getNewsdate() {
        return newsdate;
    }

    public void setNewsdate(String newsdate) {
        this.newsdate = newsdate == null ? null : newsdate.trim();
    }

    public BigDecimal getNewsstate() {
        return newsstate;
    }

    public void setNewsstate(BigDecimal newsstate) {
        this.newsstate = newsstate;
    }
}