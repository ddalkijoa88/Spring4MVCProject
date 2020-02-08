package min.mvcproject.vo;

import java.io.Serializable;


public class Board implements Serializable{
    private String bdid;
    private String subject;
    private String writer;
    private String regdate;
    private int thumbs;
    private int views;
    private String contents;

    public Board() {}

    public String getBdid() {
        return bdid;
    }

    public void setBdid(String bdid) {
        this.bdid = bdid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public int getThumbs() {
        return thumbs;
    }

    public void setThumbs(int thumbs) {
        this.thumbs = thumbs;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }
}
