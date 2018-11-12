package com.springmvcdemo.DataRepository.Domain;

public class LogWithBLOBs extends Log {
    private String logno;

    private String logcontext;

    private String actionuser;

    public String getLogno() {
        return logno;
    }

    public void setLogno(String logno) {
        this.logno = logno == null ? null : logno.trim();
    }

    public String getLogcontext() {
        return logcontext;
    }

    public void setLogcontext(String logcontext) {
        this.logcontext = logcontext == null ? null : logcontext.trim();
    }

    public String getActionuser() {
        return actionuser;
    }

    public void setActionuser(String actionuser) {
        this.actionuser = actionuser == null ? null : actionuser.trim();
    }
}