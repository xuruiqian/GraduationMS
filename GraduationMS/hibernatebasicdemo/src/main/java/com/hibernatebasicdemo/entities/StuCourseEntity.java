package com.hibernatebasicdemo.entities;

import javax.persistence.*;

@Entity
@Table(name = "stu_course", schema = "dbdemo", catalog = "")
@IdClass(StuCourseEntityPK.class)
public class StuCourseEntity {
    private String studentId;
    private String courseId;

    @Id
    @Column(name = "student_id")
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    @Id
    @Column(name = "course_id")
    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StuCourseEntity that = (StuCourseEntity) o;

        if (studentId != null ? !studentId.equals(that.studentId) : that.studentId != null) return false;
        return courseId != null ? courseId.equals(that.courseId) : that.courseId == null;
    }

    @Override
    public int hashCode() {
        int result = studentId != null ? studentId.hashCode() : 0;
        result = 31 * result + (courseId != null ? courseId.hashCode() : 0);
        return result;
    }
}
