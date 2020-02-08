package min.mvcproject.vo;

import java.io.Serializable;


public class Product implements Serializable {
    private String prdid;
    private String pname;
    private int pprice;
    private String pdesc;
    private String pmaker;
    private String pcate;
    private int pstock;
    private String pcond;
    private String prdimg;

    public Product() {}

    public String getPrdid() {
        return prdid;
    }

    public void setPrdid(String prdid) {
        this.prdid = prdid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPprice() {
        return pprice;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getPmaker() {
        return pmaker;
    }

    public void setPmaker(String pmaker) {
        this.pmaker = pmaker;
    }

    public String getPcate() {
        return pcate;
    }

    public void setPcate(String pcate) {
        this.pcate = pcate;
    }

    public int getPstock() {
        return pstock;
    }

    public void setPstock(int pstock) {
        this.pstock = pstock;
    }

    public String getPcond() {
        return pcond;
    }

    public void setPcond(String pcond) {
        this.pcond = pcond;
    }

    public String getPrdimg() {
        return prdimg;
    }

    public void setPrdimg(String prdimg) {
        this.prdimg = prdimg;
    }
}

