package min.mvcproject.dao;


import min.mvcproject.vo.Board;
import min.mvcproject.vo.Pds;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;

@Service("pdf")
public class PdsFactory implements Serializable{

    private ArrayList<Pds> pds = new ArrayList<Pds>();

    public PdsFactory(){
        for(int i=101;i>=82;--i) {
            Pds b = new Pds();
            b.setBdid(i+"");
            b.setSubject("제목");
            b.setWriter("min");
            b.setRegdate("2019.01.01");
            b.setThumbs(10);
            b.setViews(100);
            b.setContents("안녕하세요");

            pds.add(b);
        }
    }

    public ArrayList<Pds> getAllPds(){
        return pds;
    }

    public Pds getPdsById(String id){
        Pds pd =null;

        for(Pds p : pds){
            if(p.getBdid().equals(id)){
                pd = p;
                break;
            }
        }
        return pd;
    }

    public void addPds(Pds p){
        pds.add(p);

    }


}
