package entity;

import java.util.Collection;

/**
 * @author lizhibing
 * @create 2021-05-23 16:02
 * @description
 **/
public class Emp {
    private int eid;
    private String ename;
    private int eage;
    private String esex;
    private String eaddr;
    private String dept;
    private int workTime;
    private int esal;

    public Emp(int eid, String ename, int eage, String esex, String eaddr, String dept, int workTime, int esal) {
        this.eid = eid;
        this.ename = ename;
        this.eage = eage;
        this.esex = esex;
        this.eaddr = eaddr;
        this.dept = dept;
        this.workTime = workTime;
        this.esal = esal;
    }

    public Emp(){}
    public Emp(int eid, String ename, int eage, String esex, String eaddr, String dept, int workTime) {
        this.eid = eid;
        this.ename = ename;
        this.eage = eage;
        this.esex = esex;
        this.eaddr = eaddr;
        this.dept = dept;
        this.workTime = workTime;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public int getEage() {
        return eage;
    }

    public void setEage(int eage) {
        this.eage = eage;
    }

    public String getEsex() {
        return esex;
    }

    public void setEsex(String esex) {
        this.esex = esex;
    }

    public String getEaddr() {
        return eaddr;
    }

    public void setEaddr(String eaddr) {
        this.eaddr = eaddr;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public int getWorkTime() {
        return workTime;
    }

    public void setWorkTime(int workTime) {
        this.workTime = workTime;
    }

    public int getEsal() {
        return esal;
    }

    public void setEsal(int esal) {
        this.esal = esal;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", eage=" + eage +
                ", esex='" + esex + '\'' +
                ", eaddr='" + eaddr + '\'' +
                ", dept='" + dept + '\'' +
                ", workTime=" + workTime +
                '}';
    }
}
