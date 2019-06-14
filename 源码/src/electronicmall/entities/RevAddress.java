package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class RevAddress {
    private String rcvid;

    private String rcvaddr;

    private BigDecimal rcvstate;

    public String getRcvid() {
        return rcvid;
    }

    public void setRcvid(String rcvid) {
        this.rcvid = rcvid == null ? null : rcvid.trim();
    }

    public String getRcvaddr() {
        return rcvaddr;
    }

    public void setRcvaddr(String rcvaddr) {
        this.rcvaddr = rcvaddr == null ? null : rcvaddr.trim();
    }

    public BigDecimal getRcvstate() {
        return rcvstate;
    }

    public void setRcvstate(BigDecimal rcvstate) {
        this.rcvstate = rcvstate;
    }
}