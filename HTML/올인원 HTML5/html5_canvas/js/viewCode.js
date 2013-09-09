// JavaScript Document
function iniViewCode(){
	var exDiv=document.getElementById('example');
	var codeDiv=document.getElementById('code');
		codeDiv.id='codeDispayNone';
	var exTitle=exDiv.getElementsByTagName('H2')[0];
		exTitle.style.cursor='pointer';
		exTitle.onclick=function(){viewCode(codeDiv,exDiv)}
	var codeTitle=codeDiv.getElementsByTagName('H2')[0];
		codeTitle.style.cursor='pointer';
		codeTitle.onclick=function(){closeCode(codeDiv,exDiv)}
}

function viewCode(codeDiv,exDiv){
	codeDiv.id='code_js';
	exDiv.id='example_js'
}

function closeCode(codeDiv,exDiv){
	codeDiv.id='codeDispayNone';
	exDiv.id='example'
}



window.onload=function(){iniViewCode()};