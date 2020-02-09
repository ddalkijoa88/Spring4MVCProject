package min.mvcproject.service;

import sun.awt.image.BufferedImageDevice;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

public class CaptchaUtil {
    //captcha를 생성하는 유틸리티 클래스
    public static void getCaptcha(
            HttpServletRequest req,
            HttpServletResponse res ) throws IOException{
        //HTTP 캐시 제어
        //기존에 만들어 진 데이터를 없애버리고 새로운 환경에서 시작
        res.setHeader("Cache-Control","no-cache");
        res.setHeader("Progma","no-cache");
        res.setDateHeader("Expires",0);
        res.setDateHeader("Max-Age",0);

        //세션 제어
        HttpSession sess = req.getSession();
        //이전에 만든 captcha가 존재하는 경우 세션에 저장된 captcha 문자를 알아냄
        String ch = (String)sess.getAttribute("cta");

        //captcha 이미지 생성 순서
        //이미지에 출력할 난수 생성
        //난수를 나타낼 이미지 생성
        //응답 객체로 이미지 출력

        //난수 생성: 세션이 없는 경우에만 만듦
        if(ch == null){
            Random r = new Random();
            String token = Long.toString(r.nextLong(), 36);
            ch = token.substring(1,8);
//            System.out.println(token+" / "+ch); //확인용
        }

        //이미지 생성
        //captcha를 출력할 이미지 영역 정의(가로, 세로, 종류)
        BufferedImage img = new BufferedImage(300,80,BufferedImage.TYPE_INT_RGB);
        //메모리에 이미지 영역 생성
        Graphics2D g2d = img.createGraphics();
        //색상지정
        Color c= new Color(0.6663f, 0.4659f, 0.3232f);
        //문자에 적용할 그라데이션 정의
        GradientPaint gp = new GradientPaint(30,30,Color.RED, 15,25,Color.WHITE, true);
        //이미지 영역에 색깔 입히기
        g2d.setPaint(gp);
        //글자체 및 크기 지정
        Font f = new Font("verdana",Font.CENTER_BASELINE,55);
        //이미지 영역에 글자체 지정
        g2d.setFont(f);

        //난수형태의 문자를 이미지 영역에 그림
        g2d.drawString(ch,10,60);
        //작업 종료
        g2d.dispose();

        //응답 객체로 이미지 출력
        //바이너리위주 출력을 위해 응답 객체 생성
        OutputStream os = res.getOutputStream();

        //메모리 영역에 생성된 이미지 객체를 이미지 형식으로 os 변수가 가리키는 곳으로 보낸다
        ImageIO.write(img,"png",os);
        os.flush();
        os.close();

        //생성된 난수는 세션 변수에 저장
        sess.setAttribute("cta",ch);


    }
}
