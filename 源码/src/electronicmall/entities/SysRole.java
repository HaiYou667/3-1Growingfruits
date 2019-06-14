package edu.etime.electronicmall.entities;

import java.math.BigDecimal;

public class SysRole {
	
    private String roleid;

    private String rolename;

    private BigDecimal rolestate;
    
    
    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public BigDecimal getRolestate() {
        return rolestate;
    }

    public void setRolestate(BigDecimal rolestate) {
        this.rolestate = rolestate;
    }
}