package min.mvcproject.service;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

public class FileUpDownUtil {
    public static Map<String, String> procUpload(HttpServletRequest req, String uPath){
        //서버로 전송된 폼데이터를 저장하기 위해 Map을 이용한다

        Map<String, String> frmdata = new HashMap<String, String>();

        Today today = new Today();
        String ymdhms = today.getDateTime();


//        String uploadPath = "c:/java/prdimgs/";
        String uploadPath = uPath;


        String fName="";

        //요청한 폼데이터가 multipart인지 확인
        boolean isMultiPart = FileUpload.isMultipartContent(req);

        try{
        if(isMultiPart) { //요청이 multipart라면
            //업로드 처리 객체 생성
            DiskFileItemFactory dfif = new DiskFileItemFactory();

            ServletFileUpload upload = new ServletFileUpload(dfif);
            List items = upload.parseRequest(req);
            Iterator<FileItem> params = items.iterator();


            ArrayList<String> texts = new ArrayList<String>();

            while (params.hasNext()) {
                FileItem item = (FileItem) params.next();

                if (item.isFormField()) {//텍스트라면
                    String name = item.getFieldName(); // form의 name을 가져옴
                    String val = item.getString("utf-8"); //form에서 입력된 값을 가져옴
                    frmdata.put(name, val);

                } else {//파일이라면
                    String upPath = item.getName();
                    fName = upPath.substring(upPath.lastIndexOf("\\") + 1);


                    String fname[] = fName.split("[.]");
                    fName = fname[0] + ymdhms + "." + fname[1];

                    File f = new File(uploadPath + "/" + fName);

                    item.write(f);

                    String name = item.getFieldName();
                    frmdata.put(name, fName);
                }
        }//while
        }//if
    }catch(Exception ex){
        ex.printStackTrace();
    }
        return frmdata;
    }


    public static Map<String, String> procCaptcha(HttpServletRequest req, String uPath){
        //서버로 전송된 폼데이터를 저장하기 위해 Map을 이용한다

        Map<String, String> frmdata = new HashMap<String, String>();




        //요청한 폼데이터가 multipart인지 확인
        boolean isMultiPart = FileUpload.isMultipartContent(req);

        try{
            if(isMultiPart) { //요청이 multipart라면
                //업로드 처리 객체 생성
                DiskFileItemFactory dfif = new DiskFileItemFactory();

                ServletFileUpload upload = new ServletFileUpload(dfif);
                List items = upload.parseRequest(req);
                Iterator<FileItem> params = items.iterator();


                ArrayList<String> texts = new ArrayList<String>();

                while (params.hasNext()) {
                    FileItem item = (FileItem) params.next();

                    if (item.isFormField()) {//텍스트라면
                        String name = item.getFieldName(); // form의 name을 가져옴
                        String val = item.getString("utf-8"); //form에서 입력된 값을 가져옴
                        frmdata.put(name, val);

                    }
                }//while
            }//if
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return frmdata;
    }



    public static void procDownload(HttpServletRequest req, HttpServletResponse res, String dPath) throws Exception{

        req.setCharacterEncoding("utf-8");

        //다운로드 할 파일 경로 알아내기
        String fName = req.getParameter("f");
        String dfName = dPath+fName;

        System.out.println(fName);

        //다운로드 처리와 관련된 객체 선언
        InputStream is = null;
        OutputStream os = null;
        File f = null;

        //다운로드 처리
        try{
            boolean skip = false;
            try{
                f=new File(dPath, fName);
                is = new FileInputStream(f);

            }catch (Exception ex){
                //다운로드할 파일이 존재하지 않으면 이후 코드를 실행하지 않도록 플래그 설정
                skip=true;
            }

            //브라우저가 맘대로 다운로드를 처리하지 못하게 HTTP 헤더를 설정
            res.reset();
            res.setContentType("application/octet-stream"); //다운로드 유형
            res.setHeader("Content-Description", "FileDownload"); //다운로드 설명


            if(!skip){//다운로드 할 파일이 존재한다면 다운로드할 파일에 한글이 있는 경우 적절히 한글 처리

                fName = new String(fName.getBytes("utf-8"),"iso-8859-1");
                System.out.println(fName);

                res.setHeader("Content-Disposition","attachment; filename=\""+fName+"\""); //다운로드 할 파일을 지정하는 것. 잘못 설정하면 현재 열려있는 페이지를 다운받게 됨
                //다운로드시 다운로드 대화상자에 보여질 파일명 지정
                res.setHeader("Content-Type","application/octet-stream; charset=utf-8");

                //다운로드 파일의 유형 정의
                res.setHeader("Content-Length", f.length()+"");

                //다운로드할 파일의 크기 표시

                //다운로드할 파일을 스트림 형태로 클라이언트에 전송
                os=res.getOutputStream();
                byte b[] = new byte[(int)f.length()];
                int cnt=0;

                while((cnt=is.read(b))>0){
                    os.write(b,0,cnt);
                }
            }else{
                res.setContentType("text/html; charset=utf-8");
                //jsp 페이지에서 결과를 출력할 때 out 객체를 이용했던 것 처럼 자바 클래스에서 JSP 페이지로 결과를 출력하려면 PrintWrite 클래스를 이용함
                PrintWriter out = res.getWriter();
                out.print("<h1>다운로드할 파일이 없습니다</h1>");
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally {
            if(os!=null) os.close();
            if(is!=null) is.close();
        }

    }







}
