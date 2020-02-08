
var joinbtn = document.getElementById("newjoinbtn");
joinbtn.addEventListener("click",joinfrmcheck);

var frm = document.joinfrm;

var jumin1=frm.jumin1.value;
var jumin2=frm.jumin2.value;


var uidrex=/^[a-zA-Z][0-9a-zA-Z_]{6,16}$/;
var pwdrex=/^[a-zA-Z][0-9a-zA-Z_]{6,16}$/;
var emailrxp = /^[a-zA-z]([-_\.]?[0-9a-zA-z])*@[0-9a-zA-z]([-_\.]?[0-9a-zA-z])*\.[a-zA-Z]{2,3}$/;
var telrxp = /^\d{3}-\d{3,4}-\d{4}/;



// 주민번호/아이디/비밀번호/우편번호/이메일/연락처에 대해 형식 유효성 검증
//아이디는 영문 소문자, 숫자와 특수기호(_)
//비밀번호는 6~16자의 영문 대소문자, 숫자 및 특수문자
function joinfrmcheck() {
    var email1=frm.email1.value;
    var email2=frm.email2.value;

    var tel1=frm.tel1.value;
    var tel2=frm.tel2.value;
    var tel3=frm.tel3.value;

    if(frm.name.value==""){
        alert("이름을 입력하세요");
    }else if(jumin1==""){
        alert("주민번호를 입력하세요");
    }else if(jumin2==""){
        alert("주민번호를 입력하세요");
    }else if(!jumincheck(jumin1,jumin2)){
        alert("올바른 주민번호가 아닙니다")
    }else if(frm.uid2.value==""){
        alert("아이디를 입력하세요");
        frm.uid2.focus();
    }else if(!(frm.uid2.value.length>=6 && frm.uid2.value.length<=16)){
        alert("아이디는 6~16자로 입력해주세요");
        frm.uid2.focus();
    }else if(!uidrex.test(frm.uid2.value)){
        alert("아이디는 영문 소문자, 숫자, 특수기호(_)만 입력 가능합니다");
        frm.uid2.focus();
    }else if(frm.pwd2.value==""){
        alert("비밀번호를 입력하세요");
    }else if(!(frm.pwd2.value.length>=6 && frm.pwd2.value.length<=16)){
        alert("비밀번호는 6~16자로 입력해주세요");
        frm.pwd2.focus();
    }else if(!pwdrex.test(frm.pwd2.value)){
        alert("비밀번호가 잘못 작성되었습니다.");
    }else if(frm.pwd2.value !=frm.pwd2b.value){
         alert("비밀번호가 서로 맞지 않습니다");
    }else if(frm.zip1.value=="" || frm.zip2.value=="" ||frm.addr1.value==""){
        alert("우편번호 찾기를 실행하세요");
    }else if(frm.addr2.value==""){
        alert("나머지 주소를 입력하세요!");
    }else if(frm.email1.value=="" || frm.email2.value==""){
        alert("이메일 주소를 입력하세요");
    }else if(!emailrxp.test(email1 +"@"+ email2)){
        alert("올바른 이메일 형식이 아닙니다");
    }else if(!telrxp.test(tel1+"-"+tel2+"-"+tel3)){
        alert("올바른 전화번호가 아닙니다");
    }

    else if(frm.tel1.value=="" || frm.tel2.value=="" ||frm.tel3.value==""){
        alert("전화번호를 입력하세요");
    }else if(frm.captcha.value==""){
        alert("자동가입방지를 입력하세요")
    }

    else{
        frm.submit();
    }





}

function jumincheck(jm1, jm2){
    //주민번호 유효성 검사
    //각 자리수에 상수를 곱한 뒤 11로 나눈 나머지가 주민번호 맨 마지막 숫자와 일치여부 검사
    //11-((2*a + 3*b + 4*c + 5*d + 6*e + 7*f + 8*g + 9*h +2*i +3*j + 4*k + 5*l)%11)%11=M
    var jms = [];
    var muls = [2,3,4,5,6,7,8,9,2,3,4,5];
    var sum = 0;
    var jumin = jm1 + jm2; //주민번호 앞자리와 뒷자리를 합친 것

    //주민번호 각 자리를 추출한다
    for(var i =0; i<13; ++i){
        jms[i] = jumin.substring(i,i+1);
    }
        //각 자리값과 상수를 곱한 후 총합을 구한다
    for(var i =0; i<12; ++i) {
        sum+= (jms[i]*muls[i]);
    }

    //11로 나눈 나머지를 11에서 뺀다
    //결과가 10 이상이면 첫째자리를 추출한다
    sum = (11-(sum%11))%10;

    //결과값과 주민번호 맨 마지막 값과 일치 여부 검사
    if(sum == jms[12]){
        return true;
    }else{
        return false;
    }


}

//이메일 입력시 직접 입력 방식과 항목 선택 입력방식 구현
//sendemail이 바뀌면 그 값을 email2에 넣어줌
$('#sendemail').change(function(){
   $('#sendemail option:selected').each(
       function(){
           if($(this).val()=="myemail"){
               $('#email2').val('');
               $('#email2').attr('readonly',false);
           }else{ //직접 입력이 아닌 경우
               $('#email2').val($(this).text());
               $('#email2').attr('readonly',true);
           }
       });
});

