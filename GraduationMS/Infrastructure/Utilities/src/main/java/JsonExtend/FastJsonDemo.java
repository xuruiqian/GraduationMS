package JsonExtend;

import com.alibaba.fastjson.JSON;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class FastJsonDemo {
    //Deserialize
    @Test
    public void test1() {
        String json1 = "{'id':1,'name':'JAVAEE-1703','stus':[{'id':101,'name':'Tom','age':16}]}";
        Grade grade = JSON.parseObject(json1, Grade.class);
        System.out.println(grade.getName());
        System.out.println(grade);

        String json2 = "['Bei Jin','Tian Jin','Hang Zhou']";
        List<String> list = JSON.parseArray(json2, String.class);
        System.out.println(list);
    }

    //Serialize
    @Test
    public void test2() {
        ArrayList<Student> list = new ArrayList<Student>();
        for (int i = 1; i < 3; i++) {
            list.add(new Student(101 + i, "Jerry", 20 + i));
        }
        Grade grade = new Grade(100001, "Jack", list);
        String json = JSON.toJSONString(grade);

        System.out.println(json);
    }
}