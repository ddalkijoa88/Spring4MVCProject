package min.mvcproject.controller;

import min.mvcproject.dao.BoardFactory;
import min.mvcproject.service.Today;
import min.mvcproject.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Random;


@Controller
public class BoardController {

    @Autowired private BoardFactory bdf;  //객체 생성 코드가 중복되므로 스프링 DI를 이용해 주입받는다. 주입하려는 boardFactory 클래스에는 @Service("bdf")와 같이 명시해준다

    @RequestMapping(value = "board/list", method = RequestMethod.GET)
    public String list(Model m){

//        BoardFactory bdf = new BoardFactory();
        List<Board> bds = bdf.getAllBoards();

        m.addAttribute("bds", bds);
        m.addAttribute("cnt", bds.size());

        return "board/list";
    }

    @RequestMapping(value = "board/view", method = RequestMethod.GET)
    public String view(Model m, String id){
//        BoardFactory bdf = new BoardFactory();
        Board b = bdf.getBoardById(id);
        b.setViews(b.getViews() + 1);  // 조회수 증가

        m.addAttribute("b", b);


        return "board/view";
    }

    //글쓰기 폼 출력 메서드
    @RequestMapping(value = "board/write", method = RequestMethod.GET)
    public String write(){


        return "board/write";
    }

    //글 입력 완료 후 호출되는 메서드
    @RequestMapping(value = "board/write", method = RequestMethod.POST)
    public String writeok(Board b){
        //글번호 생성
        Random rnd = new Random();
        int bdid = rnd.nextInt(100)+500;
        b.setBdid(bdid+"");
        //작성일 생성
        Today today = new Today();
        String regdate = today.getDateTime2();
        b.setRegdate(regdate);

        //작성자 생성
        b.setWriter("pengsu");

        //객체(게시판 데이터)에 추가하기
        bdf.addBoard(b);

        return "redirect:/board/list";
        //글쓰기 완료 후 버튼을 클릭하면 board/list로 이동하게 되는데,
        // redirect 없이 그냥 이동하면 html만 보일 뿐 안의 내용은 출력되지 않는다. (왜냐하면 list 메서드가 호출되지 않으니까)
        //redirect를 넣어주면 페이지가 전환되며 해결된다
    }


    @RequestMapping(value = "board/modify", method = RequestMethod.GET)
    public String modify(){


        return "board/modify";
    }


}
