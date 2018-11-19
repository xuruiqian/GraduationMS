package com.springmvcdemo.Data.Domain;

public class QuickNavigationWithBLOBs extends QuickNavigation {
    private String href;

    private String backgroudcolor;

    private String icon;

    private String text;

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href == null ? null : href.trim();
    }

    public String getBackgroudcolor() {
        return backgroudcolor;
    }

    public void setBackgroudcolor(String backgroudcolor) {
        this.backgroudcolor = backgroudcolor == null ? null : backgroudcolor.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text == null ? null : text.trim();
    }
}