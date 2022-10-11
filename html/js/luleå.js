function showsecret()
{
   document.getElementById("secret").style.display = "block";
}

function hidesecret()
{
  document.getElementById("secret").style.display = "none";
}

function showhsecret()
{
   document.getElementById("hanks").style.display = "block";
   var music = new Audio('assets/boom.mp3');
   music.play();
}

function hidehsecret()
{
  document.getElementById("hanks").style.display = "none";
}

function nej()
{
  alert('Nej');
}
document.getElementById("kop").onclick = function() {changetext2()};

function changetext2(){
    document.getElementById("2ndDiv").innerHTML = "Jasså, du vill köpa biljett! Det kan du göra genom att trycka på sas. <br>\<br>";
	document.getElementById("2ndDiv").style.color = "white";
	var sas1 = document.getElementById("2ndDiv");
	
    sas1.innerHTML+= "<a href='sas.html' target='_blank'>' '<img src='assets/sas.jpg' width=\'200px\' height=\'50px\'>' '</a>" ; 
}
document.getElementById("hem").onclick = function() {changetext1()};

function changetext1(){
let html =	document.getElementById("1st").innerHTML;
document.getElementById("2ndDiv").innerHTML = html;
}
/* document.getElementById("hem").onclick = function() {changetext1()};

function changetext1(){
document.getElementById("2ndDiv").innerHTML = " Tjena alla! <br>\<br> Välkommen till luleås officiela websida. <br>\<br> I luleå finns det massor med kula grejer som inte finns i någon annan stans i världen, men vi tänker inte spojla det för dig, så du får ta reda på det när du är här hos oss. <br>\<br><br>  </a>
 <div class='visible' style='color:white' onmouseout='hidesecret()' onmouseover='showsecret()'>Luleås lag ↓↓↓ <button onclick="nej()">Nej</button>
 <div id='secret'>Ni måste komma hit till luleå vi skiter i om du inte tänker komma hit, så tänker vi ta pengar från dig och använda det för att köpa flyg blijett till luleå. Ni ska leva och dö i luleå för evigt. </div> 
 </div> </div> "
}
*/
