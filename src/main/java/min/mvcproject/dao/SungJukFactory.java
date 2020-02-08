package min.mvcproject.dao;

import min.mvcproject.vo.SungJuk;

import java.util.ArrayList;

//학생 성적 3건의 데이터를 생성하는 클래스
public class SungJukFactory {

    //성적 데이터를 저장하기 위해 동적배열 객체 생성
    private ArrayList<SungJuk> sungJuks = new ArrayList<SungJuk>();



    //기본 생성자 : 3명의 학생 성적데이터를 생성함
    public SungJukFactory() {
        SungJuk sj1 = new SungJuk();
        sj1.setName("혜교");
        sj1.setKor(99);
        sj1.setEng(98);
        sj1.setMat(99);

        SungJuk sj2 = new SungJuk();
        sj2.setName("지현");
        sj2.setKor(87);
        sj2.setEng(56);
        sj2.setMat(88);

        SungJuk sj3 = new SungJuk();
        sj3.setName("수지");
        sj3.setKor(77);
        sj3.setEng(71);
        sj3.setMat(68);

        sungJuks.add(sj1);
        sungJuks.add(sj2);
        sungJuks.add(sj3);
    }

    //모든 성적 데이터를 호출한 곳으로 전달함
    public ArrayList<SungJuk> getAllSungJuks(){
        return sungJuks;
    }

    //성적 데이터 상세 보기


    //성적 데이터 추가
    public void addSungJuk(SungJuk sj){
        sungJuks.add(sj);
//        arraylist에 추가된 성적 데이터를 추가함
    }




}
