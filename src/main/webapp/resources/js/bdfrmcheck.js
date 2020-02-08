/**
 * Created by 50322 on 2019-11-29.
 */



var frm = document.bdfrm;
var newbtn = document.getElementById("newbtn");
newbtn.addEventListener("click", bdfrmcheck);

function bdfrmcheck(){

    if(frm.subject.value==""){
        alert("제목을 입력하세요");
    }else if(frm.contents.value==""){
        alert("내용을 입력하세요");
    }else{
        frm.submit();
    }



}