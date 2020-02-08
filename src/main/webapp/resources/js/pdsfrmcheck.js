
//제목, 본문, 첨부파일에 대한 일반/형식 유효성 검증 (jsp, exe, asp는 업로드 금지)

var newbtn = document.getElementById("newbtn");
newbtn.addEventListener("click",pdsfrmcheck);

var frm = document.bdfrm;
var file = frm.file1.value;
var pos = file.lastIndexOf(".");
var ext = file.slice(pos+1).toLowerCase();

function pdsfrmcheck(){

    if(frm.subject.value==""){
        alert("제목을 입력하세요");
    }else if(frm.contents.value==""){
        alert("내용을 입력하세요");
    }else if(frm.file1.value==""){
        alert("업로드할 파일을 선택하세요")
    }else if(ext == "exe"){
        alert("첨부파일 확장자를 확인하세요")

    }else{
        frm.submit();
    }


}