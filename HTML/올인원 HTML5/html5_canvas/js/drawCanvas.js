/*drawCanvas.js*/
function drawCanvas(){ 
	//canvas 영역 선택
	var canvas=document.getElementById("test"); 
	
	//canvasAPI 초기화
	var ctx=canvas.getContext("2d"); 

	//첫번재 붉은색 사각형 
	ctx.fillStyle="rgb(0,255,0)"; 
	ctx.fillRect(10,10,100,100); 

	//두번째 파란색 사각형 
	ctx.fillStyle="rgba(255,0,200,0.5)"; 
	ctx.fillRect(30,30,100,100); 

	//text의 표시 
	ctx.fillStyle="rgb(0,0,0)"; 
	ctx.fillText("Hello Canvase!", 120,20); 
	ctx.fillText("안녕 캔버스!", 150,30);
} 