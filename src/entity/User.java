package entity;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * @author lizhibing
 * @create 2021-05-12 20:15
 * @description
 **/
public class User implements HttpSessionBindingListener {
    private String pwd;
    private String name;
    private int id;
    private int age;
    private String sex;
    private String headPhoto;

    public User() {
    }

    public User(String pwd, String name, int id, int age, String sex, String headPhoto) {
        this.pwd = pwd;
        this.name = name;
        this.id = id;
        this.age = age;
        this.sex = sex;
        this.headPhoto = headPhoto;
    }

    public User(String pwd, String name, int id, int age, String sex) {
        this.pwd = pwd;
        this.name = name;
        this.id = id;
        this.age = age;
        this.sex = sex;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getHeadPhoto() {
        return headPhoto;
    }

    public void setHeadPhoto(String headPhoto) {
        this.headPhoto = headPhoto;
    }

    @Override
    public String toString() {
        return "User{" +
                "pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", id=" + id +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                '}';
    }
    @Override
    public void valueBound(HttpSessionBindingEvent event) {
        System.out.println("学生对象绑定了");
    }

    @Override
    public void valueUnbound(HttpSessionBindingEvent event) {
        System.out.println("学生对象被解绑了");
    }

}
