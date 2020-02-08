package min.mvcproject.controller;

import min.mvcproject.dao.MemberFactory;
import min.mvcproject.service.CaptchaUtil;
import min.mvcproject.service.Today;
import min.mvcproject.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

/**
 * Created by 50322 on 2020-02-07.
 */

@Controller
public class JoinController {
    @Autowired
    private MemberFactory mbf;

    @RequestMapping(value = "join/agree", method = RequestMethod.GET)
    public String join(){

        return "/join/agree";
    }

    @RequestMapping(value = "join/checkme1", method = RequestMethod.GET)
    public String agree(){

        return "join/checkme1";
    }

    @RequestMapping(value = "join/checkme2", method = RequestMethod.GET)
    public String checkme1(){

        return "join/checkme2";
    }

    @RequestMapping(value = "join/joinmember", method = RequestMethod.GET)
    public String checkme2(){

        return "join/joinmember";
    }

    @RequestMapping(value = "join/joinmember", method = RequestMethod.POST)
    public String joinmemberok(Member m, HttpServletRequest request, HttpSession session){
        String returnPage="redirect:/join/joinok";  //캡차 일치 여부에 따라 페이지 이동을 시킨다

        //유저가 폼에 입력한 데이터를 가져온다(이름, id, pw 등등은 vo로 받아온다)
        //주민번호 등은 vo에서 바로 받아올 수 없기 때문에 이처럼 받아와서 합친다
        String jumin1 = request.getParameter("jumin1");
        String jumin2 = request.getParameter("jumin2");
        String zip1 = request.getParameter("zip1");
        String zip2 = request.getParameter("zip2");
        String addr1 = request.getParameter("addr1");
        String addr2 = request.getParameter("addr2");
        String email1 = request.getParameter("email1");
        String email2 = request.getParameter("email2");
        String tel1 = request.getParameter("tel1");
        String tel2 = request.getParameter("tel2");
        String tel3 = request.getParameter("tel3");

        String jumin = jumin1 + "-" + jumin2;
        String zipcode = zip1 + "-" + zip2;
        String addr = addr1 + " " + addr2;
        String email= email1 + "@" + email2;
        String hp = tel1 + "-" + tel2 + "-" + tel3;

        Random r =new Random();
        String mbid = r.nextInt(100)+1+"";

        Today t = new Today();
        String today = t.getDateTime2();

        String mycap = request.getParameter("captcha");
        String cap = (String)session.getAttribute("cta");

        //회원 정보 저장
        m.setMbrid(mbid);
        m.setJumin(jumin);
        m.setZipcode(zipcode);
        m.setAddr(addr);
        m.setEmail(email);
        m.setHp(hp);
        m.setRegdate(today);

        if(mycap!=null && !mycap.equals(cap)){
            session.setAttribute("mbinfo", m);
            session.setAttribute("capmsg", "자동 가입 문자가 일치하지 않습니다");
            returnPage = "redirect:/join/joinmember";
        }else{
            mbf.addMember(m);
        }

        return returnPage;
    }

    @ResponseBody
    @RequestMapping(value = "join/showcaptcha", method = RequestMethod.GET)
    public void showCaptcha(HttpServletRequest request, HttpServletResponse response) throws IOException {
        CaptchaUtil.getCaptcha(request, response);
    }

    @RequestMapping(value = "join/joinok", method = RequestMethod.GET)
    public String joinok(){

        return "join/joinok";
    }



}
