package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class Admin {
    private String adminid;

    private String roleid;

    private String adminname;

    private String adminpwd;

    private String adminphone;

    private String adminaddr;

    private String admintruename;

    private String adminsex;

    private BigDecimal adminage;

    private String adminemail;

    private BigDecimal adminstate;

    public String getAdminid() {
        return adminid;
    }

    public void setAdminid(String adminid) {
        this.adminid = adminid == null ? null : adminid.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }

    public String getAdminpwd() {
        return adminpwd;
    }

    public void setAdminpwd(String adminpwd) {
        this.adminpwd = adminpwd == null ? null : adminpwd.trim();
    }

    public String getAdminphone() {
        return adminphone;
    }

    public void setAdminphone(String adminphone) {
        this.adminphone = adminphone == null ? null : adminphone.trim();
    }

    public String getAdminaddr() {
        return adminaddr;
    }

    public void setAdminaddr(String adminaddr) {
        this.adminaddr = adminaddr == null ? null : adminaddr.trim();
    }

    public String getAdmintruename() {
        return admintruename;
    }

    public void setAdmintruename(String admintruename) {
        this.admintruename = admintruename == null ? null : admintruename.trim();
    }

    public String getAdminsex() {
        return adminsex;
    }

    public void setAdminsex(String adminsex) {
        this.adminsex = adminsex == null ? null : adminsex.trim();
    }

    public BigDecimal getAdminage() {
        return adminage;
    }

    public void setAdminage(BigDecimal adminage) {
        this.adminage = adminage;
    }

    public String getAdminemail() {
        return adminemail;
    }

    public void setAdminemail(String adminemail) {
        this.adminemail = adminemail == null ? null : adminemail.trim();
    }

    public BigDecimal getAdminstate() {
        return adminstate;
    }

    public void setAdminstate(BigDecimal adminstate) {
        this.adminstate = adminstate;
    }
}