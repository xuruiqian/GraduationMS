package com.springmvcdemo.DataRepository.Domain;

public class NotificationWithBLOBs extends Notification {
    private String notificationno;

    private String message;

    private String actionuser;

    public String getNotificationno() {
        return notificationno;
    }

    public void setNotificationno(String notificationno) {
        this.notificationno = notificationno == null ? null : notificationno.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getActionuser() {
        return actionuser;
    }

    public void setActionuser(String actionuser) {
        this.actionuser = actionuser == null ? null : actionuser.trim();
    }
}