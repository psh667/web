<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="img/coforward.ico" />
<title>Form Test Action Page</title>
<style type="text/css">
	#requstUrl{
		margin-left:50px;
		margin-right:50px;
		padding:20px;
		font-size:20px;
		color:#00F;
		background:#C8C8C8;
		border-radius:20px;
	}
	
	#formValue{
		margin-left:50px;
		margin-right:50px;
		padding:20px;
		font-size:15px;
		background:#C8C8C8;
		border-radius:20px;
	}
	
	#formValueTable{
		border-collapse:collapse;
	}
	
	#formValueTable thead{
		background:#9C6;
	}
	#formValueTable td, #formValueTable th{
		padding:5px 15px;
		border:#333 solid 2px;
	
	}
</style>
</head>

<body>
<h1>Form Test Action Page</h1>
<h2>요청한 주소</h2>
<div id="requstUrl">
	<?php echo ('http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']); ?>
</div>
<h2>폼으로 부터 넘겨진 값은 다음과 같습니다. </h2>
<div id="formValue">
	<?php 
		$tbodyTr='';
		foreach($_REQUEST as $key=>$value){
		$tbodyTr.='<tr><th>'.$key.'</th><th>'.$value.'</th></tr>';
	}
	echo '<table id="formValueTable">
		    <thead>
			<tr><th>name</th><th>value</th></tr>
		  	</thead>
			<tbody>'
			 .$tbodyTr.
			'</tbody>
		  </table>';
	?>
</div>

</body>
</html>
