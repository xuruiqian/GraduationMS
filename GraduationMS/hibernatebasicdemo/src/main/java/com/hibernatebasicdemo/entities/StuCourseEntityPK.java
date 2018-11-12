package com.hibernatebasicdemo.entities;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

public class StuCourseEntityPK implements Serializable {
    private String studentId;
    private String courseId;

    @Column(name = "student_id")
    @Id
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    @Column(name = "course_id")
    @Id
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

        StuCourseEntityPK that = (StuCourseEntityPK) o;

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
