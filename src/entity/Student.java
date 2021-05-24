package entity;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * @author lizhibing
 * @create 2021-05-12 17:19
 * @description
 **/
public class Student {
    private int sid;
    private String sname;
    private int sage;
    private String ssex;
    private String semail;
    private String photo;

    public Student() {
    }

    public Student(int sid, String sname, int sage, String ssex, String semail, String photo) {
        this.sid = sid;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.semail = semail;
        this.photo = photo;
    }

    public Student(int sid, String sname, int sage, String ssex, String semail) {
        this.sid = sid;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.semail = semail;
    }

    public Student(String name, int age, String sex, String email, String photo) {
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getSage() {
        return sage;
    }

    public void setSage(int sage) {
        this.sage = sage;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sage=" + sage +
                ", ssex='" + ssex + '\'' +
                ", semail='" + semail + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }

}
