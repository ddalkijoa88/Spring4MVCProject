package min.mvcproject.service;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Today {

   public String getTime(){
       Date today = new Date();
       String ampm = "오전";

       StringBuilder sb = new StringBuilder();


       int hour = today.getHours();
       int minute = today.getMinutes();
       int second =today.getSeconds();

       if(hour/12 ==0){
           ampm="오전";
       }else{
           ampm="오후"; hour = hour-12;
       }

       sb.append("현재 접속 시간 ").append(ampm).append(" ").append(hour).append(":").append(minute).append(":").append(second).append(" ");

       return sb.toString();
   }


    //현재 시간을 출력하는 메서드 ver2
    public String getTime2(){
        Date today = new Date();
        String ampm = "오전";

        StringBuilder sb = new StringBuilder();


        String hour = today.getHours()+"";
        String minute = today.getMinutes()+"";
        String second =today.getSeconds()+"";

        if(today.getHours()<10){
            hour="0"+hour;
        }
        if(today.getMinutes()<10){
            minute="0"+minute;
        }
        if(today.getSeconds()<10){
            second="0"+second;
        }

        sb.append(hour).append(":").append(minute).append(":").append(second);

        return sb.toString();
    }

    //현재 날짜 시간을 붙여서 출력하는 메서드
    public String getDateTime(){
        StringBuilder sb = new StringBuilder();
        Calendar today = Calendar.getInstance();

        String year = today.get(Calendar.YEAR)+"";
        String month = (today.get(Calendar.MONTH)+1)+"";
        String day = today.get(Calendar.DATE)+"";

//        String hour = today.get(Calendar.HOUR)+"";  //12시간 표시
        String hour = today.get(Calendar.HOUR_OF_DAY)+"";  //24시간 표시

        String min = today.get(Calendar.MINUTE)+"";
        String sec = today.get(Calendar.SECOND)+"";

        if(today.get(Calendar.HOUR_OF_DAY)<10){
            hour="0"+hour;
        }
        if(today.get(Calendar.MINUTE)<10){
            min="0"+min;
        }
        if(today.get(Calendar.SECOND)<10){
            sec="0"+sec;
        }

        sb.append(year).append(month).append(day).append(hour).append(min).append(sec);
        return sb.toString();
    }

    public String getDate(){
        Date today = new Date();
        StringBuilder sb = new StringBuilder();

        String year = today.getYear()+1900+"";
        String month =today.getMonth()+1+"";
        String date = today.getDate()+"";
        if(today.getMonth()<10){
            month = "0"+month;
        }

        if(today.getDate()<10){
            date = "0"+date;
        }


        sb.append(year).append(".").append(month).append(".").append(date);

        return sb.toString();

    }

    //현재 날짜 시간 출력하기2
    public String getDateTime2(){
        String fmt = "yyyy.MM.dd HH:mm:ss";
        Date today = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat(fmt);

        String datetime = sdf.format(today);

        return datetime;


    }



}
