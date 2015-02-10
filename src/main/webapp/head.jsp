<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%String title = request.getParameter("title"); %>
<title><%=title %></title>
<link href="boots/css/bootstrap.min.css" rel="stylesheet">
   <script src="boots/js/jquery.min.js"></script>
   <script src="boots/js/bootstrap.min.js"></script>
   
   <style type="text/css">
   	.titleDiv{
   		background: #eff1f3;
   		font-size: 17px;
   		font-style:solid;
   		font-weight: bold;
   		line-height: 36px;
   		border-color:#EEEEEE;
   		margin: 10px 0px 10px 0px;
   		padding-left: 20px;
   		border-radius:4px;
   	}
   	
   	.contentDiv{
   		width: 860px; margin-left: auto; margin-right: auto;
   		padding: 20px 20px 30px 20px;
   		background: #ffffff;
   		border: 1px solid #ddd;
   		margin-top: 20px;
   		margin-bottom: 20px;
   	}
   	.bodyStyle{
   		background-color:#f8f8f8;
   	}
   	.input-group-addon{
   		width:250px;
   	}
   	
   	label {

	}
	
	input:focus, input:hover, textarea:focus, textarea:hover {
		 
	 }
   </style>
   
  <script type="text/javascript">
 function checkYes(ele){
	 var time = 500;
	 if(arguments.length == 2){
		 time = arguments[1];
	 }
 	var radiobtn = window.document.getElementById(ele.name+"2");
 	var div = window.document.getElementById(ele.name+"Div");
 	//alert(radiobtn);
 	if(radiobtn.checked){
 		$(div).show(time);
 		$("#"+ele.name+"Div" + " :input").each(function () {      //注意input前面有个空格
	        	$(this).attr("required","");
        })
 	}else{
 		$(div).hide(time);
 		$("#"+ele.name+"Div" + " :input").each(function () {      //注意input前面有个空格
	        	$(this).removeAttr("required");
        })
 	}
 }
 
 function updatePage(obj){
	 for(var pname in obj){
		 jQuery("input[name='"+pname+"'][type='radio']").each(function() {
			    //console.log( this.value + ":" + this.checked );
			    if(obj[pname] != ""){
			    	var strArr = obj[pname].split(";");
			    	if(strArr.length == 1){
			    		if(this.value == obj[pname]){
					    	$(this).attr("checked","checked");
					    }
			    	}else{
				    	console.log( this.value + " ; "  + strArr.length + " pname:" + pname);
				    	if(this.value == strArr[0]){
					    	$(this).attr("checked","checked");
					    }
				    	//更新下面的radio
				    	jQuery("input[name='"+pname+"0'][type='radio']").each(function() {
				    		if(this.value == strArr[1]){
						    	$(this).attr("checked","checked");
						    }
				    	});
						jQuery("input[name='"+pname+"0'][type='input']").each(function() {
							$(this).attr("value",strArr[1]);
						});
						jQuery("input[name='"+pname+"0'][type='number']").each(function() {
							$(this).attr("value",strArr[1]);
						});

				    	var div = window.document.getElementById(pname+"Div");
				    	$(div).show();
			    	}
			    }
		  });
		 
		 jQuery("input[name='"+pname+"'][type='text']").each(function() {
			 $(this).attr("value",obj[pname]);
		  });
		 
		 jQuery("input[name='"+pname+"'][type='number']").each(function() {
			    //console.log( this.value + ":" + this.checked );
			   $(this).attr("value",obj[pname]);
		  });
	 }
 }
 </script>
</head>