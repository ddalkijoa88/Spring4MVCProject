package min.mvcproject.controller;

import min.mvcproject.dao.PdsFactory;
import min.mvcproject.service.FileUpDownUtil;
import min.mvcproject.service.Today;
import min.mvcproject.vo.Pds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * Created by 50322 on 2020-02-07.
 */

@Controller
public class PdsController {

    @Autowired private PdsFactory pdf;

    @RequestMapping(value = "pds/plist", method = RequestMethod.GET)
    public String plist(Model m){

        List<Pds> pds = pdf.getAllPds();

        m.addAttribute("pds", pds);
        m.addAttribute("cnt", pds.size());

        return "pds/plist";
    }

    @RequestMapping(value = "pds/pview", method = RequestMethod.GET)
    public String pview(Model m, String id){

        Pds p = pdf.getPdsById(id);
        p.setViews(p.getViews()+1);

        m.addAttribute("p",p);

        return "pds/pview";
    }

    @RequestMapping(value = "pds/pwrite", method = RequestMethod.GET)
    public String pwrite(Model m){

        return "pds/pwrite";
    }

    @RequestMapping(value = "pds/pwrite", method = RequestMethod.POST)
    public String pwriteok(HttpServletRequest req, Pds p){
        Random rnd = new Random();
        int bdid = rnd.nextInt(100)+500;
        p.setBdid(bdid+"");

        Today today = new Today();
        String regdate = today.getDateTime2();
        p.setRegdate(regdate);

        p.setWriter("pengsu");

        //파일 업로드 처리
        String uPath = "c:/java/pdsupload/";

        Map<String, String> frmdata = FileUpDownUtil.procUpload(req, uPath);
        for(String key: frmdata.keySet()){
            String val = frmdata.get(key);
            switch (key){
                case "subject" : p.setSubject(val); break;
                case "contents" : p.setContents(val); break;
                case "file1" : p.setFile1(val); break;
            }
        }

        pdf.addPds(p);

        return "redirect:/pds/plist";
    }


    @RequestMapping(value = "pds/pmodify", method = RequestMethod.GET)
    public String pmodify(Model m){

        return "pds/pmodify";
    }

    @ResponseBody  //컨트롤러의 응답을 받는게 아니라 자체적으로 응답을 시켜준다는 의미. 따라서 return할 필요가 없다
    @RequestMapping(value = "pds/pdown", method = RequestMethod.GET)
    public void pdown(HttpServletRequest req, HttpServletResponse res) throws Exception {

        String dPath = "c:/java/pdsupload/";
        FileUpDownUtil.procDownload(req, res, dPath);

    }



}
