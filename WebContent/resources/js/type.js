// JavaScript Document
	var text = "";
	var cursor = "|";
	var count = 0;
function typeBT(str) {
	if("default" === str) {
		text = "Chúc ai đó được hạnh phúc bên nửa yêu thương! </br> " +
		"Chúc ai đó còn cô đơn sẽ tìm thấy bờ vai chia sẻ! </br>" + 
		"Chúc ai sẽ gặp được nhau sau những ngày xa cách!</br>"+ 
		"Chúc ai đó có một mùa giáng sinh tràn đầy niềm vui,</br>hạnh phúc và bình yên thật nhiều!</br>"+
		"Chúc ai đó một năm mới nhiều may mắn,</br>gặt hái nhiều thành công trong học tập cũng như cuộc sống!!!</br>" +
		"Chúc ai đó luôn hạnh phúc ấm áp bên gia đình và người thân!</br>" +
		"</br></br>______________________Bảo Toàn__________";
	} else {
		text = str;
	}
	type(text);
}


function type(str) {
	document.getElementById('typo').innerHTML = "<p>" 
	+ text.substring(0, count++) + cursor + "</p>";
	if(count <= text.length) {
		setTimeout('type()', 80);	
	}
}



