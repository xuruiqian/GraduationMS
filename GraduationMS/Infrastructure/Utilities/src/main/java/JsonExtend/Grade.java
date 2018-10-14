package JsonExtend;

import java.util.List;

public class Grade {
    private String name;
    private int id;
    private List<Student> stuList;


    public List<Student> getStuList() {
        return stuList;
    }

    public void setStuList(List<Student> stuList) {
        this.stuList = stuList;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public Grade(int id, String name, List<Student> stuList) {
        this.name = name;
        this.id = id;
        this.stuList= stuList;
    }

    public Grade() {
    }
}