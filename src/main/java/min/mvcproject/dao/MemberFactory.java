package min.mvcproject.dao;

import min.mvcproject.vo.Member;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by 50322 on 2019-11-27.
 */

//회원 데이터를 생성하는 클래스
@Service("mbf")
public class MemberFactory {
    private ArrayList<Member> mbs = new ArrayList<Member>();

    public MemberFactory(){
        Member mb = new Member();
        mb.setMbrid("1");
        mb.setUserid("abc123_abc");
        mb.setName("펭수");
        mb.setJumin("123456-1234567");
        mb.setPasswd("abc123_abc");
        mb.setZipcode("123-456");
        mb.setAddr("서울시 종로구 서대문동 123");
        mb.setEmail("abc123@naver.com");
        mb.setHp("010-1234-5677");
        mb.setRegdate("2019-12-02 11:47:32");


        mbs.add(mb);

    }

    //아이디로 회원정보 가져오기
    public Member getMemberById(String uid){
        Member mb = null;
        for(Member m:mbs){
            if(m.getUserid().equals(uid)){
                mb = m;
                break;
            }
        }
        return mb;
    }

    public void addMember(Member mb){
        mbs.add(mb);
    }

    public String getPwdByUid(String uid){
        String pwd = null;
        for(Member m:mbs){
            if(m.getUserid().equals(uid)){
                pwd = m.getPasswd();
            }
        }
            return pwd;
    }




}
