package min.mvcproject.controller;

import min.mvcproject.dao.MemberFactory;
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

@Controller
public class MemberController {

    @Autowired private MemberFactory mbf;

//    @RequestMapping(value = "/",method = RequestMethod.GET)
//    public String login(Model m){
//        return "index";
//    }

    @RequestMapping(value = "/layout/modal", method = RequestMethod.GET)
    public String login(){
        return "/layout/modal";
    }


    @RequestMapping(value = "/layout/modal", method = RequestMethod.POST)
    public String loginok(HttpServletRequest request, HttpSession session){
        String uid = request.getParameter("userid");
        String pwd = request.getParameter("passwd");

        String goPage = "/loginfail";

        String isPwd = mbf.getPwdByUid(uid);

        if(isPwd!=null && isPwd.equals(pwd)) {
            //로그인 성공
            //객체 형태로 세션을 만들면 코드를 간단하게 줄일 수 있음
            Member smb = mbf.getMemberById(uid);  //id에 해당하는 모든 정보를 가져옴
            session.setAttribute("smb", smb);
            goPage = "redirect:/";
        }
        return goPage;
    }

    @RequestMapping(value = "/loginfail", method = RequestMethod.GET)
    public String loginfail(){

        return "/loginfail";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session){

        session.invalidate();
//        response.sendRedirect("index.jsp");

        return "redirect:/";
    }

}
