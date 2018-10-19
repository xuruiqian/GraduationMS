package com.hibernatebasicdemo.entities;

import javax.persistence.*;

@Entity
@Table(name = "courses", schema = "dbdemo", catalog = "")
public class CoursesEntity {
    private String id;
    private String cname;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "cname")
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CoursesEntity that = (CoursesEntity) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (cname != null ? !cname.equals(that.cname) : that.cname != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (cname != null ? cname.hashCode() : 0);
        return result;
    }
}
