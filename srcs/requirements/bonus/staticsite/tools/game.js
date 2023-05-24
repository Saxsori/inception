function Disable_after_win(){
	for (var i = 0; i < arguments.length; i++)
		document.getElementById(arguments[i]).disabled = true;
}

function changeTextColorDull(){
	for (var i = 0; i < arguments.length; i++)
		document.getElementById(arguments[i]).style.color= "darkgray";
}
function changeTextColorPop(){
	for (var i = 0; i < arguments.length; i++)
		document.getElementById(arguments[i]).style.color= "aquamarine";
}

function CheckStatus() {
	var box1, box2, box3, box4, box5, box6, box7, box8, box9;
	box1 = document.getElementById("box1").value;
	box2 = document.getElementById("box2").value;
	box3 = document.getElementById("box3").value;
	box4 = document.getElementById("box4").value;
	box5 = document.getElementById("box5").value;
	box6 = document.getElementById("box6").value;
	box7 = document.getElementById("box7").value;
	box8 = document.getElementById("box8").value;
	box9 = document.getElementById("box9").value;

	if ((box1 == 'X') && (box2 == 'X') && (box3 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box4", "box5", "box6", "box7", "box8", "box9");
		Disable_after_win("box4", "box5", "box6", "box7", "box8", "box9");
	}
	else if ((box1 == 'X') && (box4 == 'X') && (box7 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box2", "box3", "box5", "box6", "box8", "box9");
		Disable_after_win("box2", "box3", "box5", "box6", "box8", "box9");
	}
	else if ((box1 == 'X') && (box5 == 'X') && (box9 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box2", "box3", "box4", "box6", "box7", "box8");
		Disable_after_win("box2", "box3", "box4", "box6", "box7", "box8");
	}
	else if ((box3 == 'X') && (box5 == 'X') && (box7 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box1", "box2", "box4", "box6", "box8", "box9");
		Disable_after_win("box1", "box2", "box4", "box6", "box8", "box9");
	}
	else if ((box4 == 'X') && (box5 == 'X') && (box6 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box1", "box2", "box3", "box7", "box8", "box9");
		Disable_after_win("box1", "box2", "box3", "box7", "box8", "box9");
	}
	else if ((box2 == 'X') && (box5 == 'X') && (box8 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box1", "box3", "box4", "box6", "box7", "box9");
		Disable_after_win("box1", "box3", "box4", "box6", "box7", "box9");
	}
	else if ((box3 == 'X') && (box6 == 'X') && (box9 == 'X')) {
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box1", "box2", "box4", "box5", "box7", "box8");
		Disable_after_win("box1", "box2", "box4", "box5", "box7", "box8");
	}
	else if ((box7 == 'X') && (box8 == 'X') && (box9 == 'X')){
		document.getElementById('result').innerHTML = "Player X Won";
		changeTextColorDull("box1", "box2", "box3", "box4", "box5", "box6");
		Disable_after_win("box1", "box2", "box3", "box4", "box5", "box6");
	}
	else if ((box1 == 'O') && (box2 == 'O') && (box3 == 'O')) {
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box4", "box5", "box6", "box7", "box8", "box9");
		Disable_after_win("box4", "box5", "box6", "box7", "box8", "box9");
	}
	else if ((box1 == 'O') && (box4 == 'O') && (box7 == 'O')){
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box2", "box3", "box5", "box6", "box8", "box9");
		Disable_after_win("box2", "box3", "box5", "box6", "box8", "box9");
	}
	else if ((box5 == 'O') && (box1 == 'O') && (box9 == 'O')) {
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box2", "box3", "box4", "box6", "box7", "box8");
		Disable_after_win("box2", "box3", "box4", "box6", "box7", "box8");
	}
	else if ((box5 == 'O') && (box3 == 'O') && (box7 == 'O')){
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box1", "box2", "box4", "box6", "box8", "box9");
		Disable_after_win("box1", "box2", "box4", "box6", "box8", "box9");
	}
	else if ((box5 == 'O') && (box4 == 'O') && (box6 == 'O')){
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box1", "box2", "box3", "box7", "box8", "box9");
		Disable_after_win("box1", "box2", "box3", "box7", "box8", "box9");
	}
	else if ((box5 == 'O') && (box2 == 'O') && (box8 == 'O')){
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box1", "box3", "box4", "box6", "box7", "box9");
		Disable_after_win("box1", "box3", "box4", "box6", "box7", "box9");
	}
	else if ((box9 == 'O') && (box3 == 'O') && (box6 == 'O')) {
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box1", "box2", "box4", "box5", "box7", "box8");
		Disable_after_win("box1", "box2", "box4", "box5", "box7", "box8");
	}
	else if ((box9 == 'O') && (box7 == 'O') && (box8 == 'O')){
		document.getElementById('result').innerHTML = "Player O Won";
		changeTextColorDull("box1", "box2", "box3", "box4", "box5", "box6");
		Disable_after_win("box1", "box2", "box3", "box4", "box5", "box6");
	}
	else if ((box1 == 'X' || box1 == 'O') && (box2 == 'X' || box2 == 'O') && (box3 == 'X' || box3 == 'O') && 
	(box4 == 'X' || box4 == 'O') && (box5 == 'X' || box5 == 'O') && (box6 == 'X' || box6 == 'O') &&
	(box7 == 'X' || box7 == 'O') && (box8 == 'X' || box8 == 'O') && (box9 == 'X' || box9 == 'O')) {
		changeTextColorDull("box1", "box2", "box3", "box4", "box5", "box6", "box7", "box8", "box9");
		document.getElementById('result').innerHTML = "It's a tie :(";
	}
	else {
		if (flag)
			document.getElementById('result').innerHTML = "Player X turn";
		else
			document.getElementById('result').innerHTML = "Player O turn";
	}
}

flag = 1

function BoxOne() {
	if (flag){
		document.getElementById("box1").value = 'X';
		document.getElementById("box1").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box1").value = 'O';
		document.getElementById("box1").disabled = true;
		flag = 1;
	}
}

function BoxTwo() {
	if (flag){
		document.getElementById("box2").value = 'X';
		document.getElementById("box2").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box2").value = 'O';
		document.getElementById("box2").disabled = true;
		flag = 1;
	}
}

function BoxThree() {
	if (flag){
		document.getElementById("box3").value = 'X';
		document.getElementById("box3").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box3").value = 'O';
		document.getElementById("box3").disabled = true;
		flag = 1;
	}
}

function BoxFour() {
	if (flag){
		document.getElementById("box4").value = 'X';
		document.getElementById("box4").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box4").value = 'O';
		document.getElementById("box4").disabled = true;
		flag = 1;
	}
}

function BoxFive() {
	if (flag){
		document.getElementById("box5").value = 'X';
		document.getElementById("box5").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box5").value = 'O';
		document.getElementById("box5").disabled = true;
		flag = 1;
	}
}

function BoxSix() {
	if (flag){
		document.getElementById("box6").value = 'X';
		document.getElementById("box6").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box6").value = 'O';
		document.getElementById("box6").disabled = true;
		flag = 1;
	}
}

function BoxSeven() {
	if (flag){
		document.getElementById("box7").value = 'X';
		document.getElementById("box7").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box7").value = 'O';
		document.getElementById("box7").disabled = true;
		flag = 1;
	}
}

function BoxEight() {
	if (flag){
		document.getElementById("box8").value = 'X';
		document.getElementById("box8").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box8").value = 'O';
		document.getElementById("box8").disabled = true;
		flag = 1;
	}
}

function BoxNine() {
	if (flag){
		document.getElementById("box9").value = 'X';
		document.getElementById("box9").disabled = true;
		flag = 0;
	}
	else{
		document.getElementById("box9").value = 'O';
		document.getElementById("box9").disabled = true;
		flag = 1;
	}
}

function reset_boxes(){
	document.getElementById("box1").value = "";
	document.getElementById("box2").value = "";
	document.getElementById("box3").value = "";
	document.getElementById("box4").value = "";
	document.getElementById("box5").value = "";
	document.getElementById("box6").value = "";
	document.getElementById("box7").value = "";
	document.getElementById("box8").value = "";
	document.getElementById("box9").value = "";
	document.getElementById("box1").disabled = false;
	document.getElementById("box2").disabled = false;
	document.getElementById("box3").disabled = false;
	document.getElementById("box4").disabled = false;
	document.getElementById("box5").disabled = false;
	document.getElementById("box6").disabled = false;
	document.getElementById("box7").disabled = false;
	document.getElementById("box8").disabled = false;
	document.getElementById("box9").disabled = false;
	flag = 1;
	changeTextColorPop("box1", "box2", "box3", "box4", "box5", "box6", "box7", "box8", "box9")
	document.getElementById('result').innerHTML = "Player X turn";
}