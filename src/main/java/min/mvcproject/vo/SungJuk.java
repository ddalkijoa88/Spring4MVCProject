package min.mvcproject.vo;

import java.io.Serializable;


public class SungJuk implements Serializable{
    //private 멤버변수

    private String name;
    private int kor;
    private int eng;
    private int mat;

    //생성자
    public SungJuk() {}



    //getter/setter
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getKor() {
        return kor;
    }

    public void setKor(int kor) {
        this.kor = kor;
    }

    public int getEng() {
        return eng;
    }

    public void setEng(int eng) {
        this.eng = eng;
    }

    public int getMat() {
        return mat;
    }

    public void setMat(int mat) {
        this.mat = mat;
    }





}
