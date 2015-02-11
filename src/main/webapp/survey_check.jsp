<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"></jsp:include>

<body style="background-color:#f8f8f8">

<%
String labels1[] = {"早博","ST- T改变","房颤"};
%>

<div class="contentDiv">
<%--<h1 align="center">个人健康状况及家族病史</h1>
   --%>
   <h1 align="center">个人健康状况及生活方式问卷</h1>
   
   <form class="form-horizontal" id="submitBtn">
   <div id="legend" class="">
        <legend >第四部分：体检指标
        </legend>
    </div>
	
	一般检查
	<table>
		<tr>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">身高(cm)</label>  
				  <div class="col-md-5">
				  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
				  </div>
				</div>
			</td>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">体重(kg)</label>  
				  <div class="col-md-5">
				  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
				  </div>
				</div>
		    </td>
			
		</tr>
		<tr>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">收缩压(高压)mmHg</label>  
				  <div class="col-md-5">
				  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
				  </div>
				</div>
			</td>
			
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">舒张压(低压)mmHg</label>  
				  <div class="col-md-5">
				  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
				  </div>
				</div>
			</td>
			
		</tr>
		
		<tr>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">腰围(cm)</label>  
				  <div class="col-md-5">
				  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
				  </div>
				</div>
			</td>
		
		</tr>
	</table>
	
	 
	心电图检查
     <table width="100%" >
		<tr width="100%" >
			<td >
				<div class="row">       
		        <label for="isWeiNai" class="col-sm-5 control-label">早博</label>
		        <div class="col-sm-5">
		        <label class="radio-inline"> <input type="radio" name="isWeiNai"  value="有" >有 </label>
		        <label class="radio-inline"> <input type="radio" name="isWeiNai"  value="无"> 无 </label>
		        </div></div>
			</td>
			<td >
				<div class="row">       
		        <label for="isWeiNai" class="col-sm-5 control-label">ST- T改变</label>
		        <div class="col-sm-5">
		        <label class="radio-inline"> <input type="radio" name="isWeiNai"  value="有" >有 </label>
		        <label class="radio-inline"> <input type="radio" name="isWeiNai"  value="无"> 无 </label>
		        </div></div>
				
		    </td>
			
		</tr>
		<tr>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">房颤</label>  
				  <div class="col-md-5">
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="有" >有 </label>
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="无"> 无 </label>
			        </div>
				</div>
			</td>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput">左心室肥大 </label>  
				  <div class="col-md-5">
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="有" >有 </label>
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="无"> 无 </label>
			        </div>
				</div>
		    </td>
		</tr>
		</table>
		
		3.X线和B超检查
		<table width="100%">
		<%
			String labels[]  ={"肺部阴影","心界扩大","肝脏肿大","肝脏肿块","脂肪肝","胆结石","肾结石","乳房良性结节或肿块"} ;
			for(int i=0; i<4; i++){
		%>
		<tr width="100%">
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput"><%=labels[i*2] %></label>  
				  <div class="col-md-5">
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="有" >有 </label>
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="无"> 无 </label>
			        </div>
				</div>
			</td>
			<td>
				<div class="form-group">
				  <label class="col-md-5 control-label" for="textinput"><%=labels[i*2+1] %> </label>  
				  <div class="col-md-5">
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="有" >有 </label>
			        <label class="radio-inline"> <input type="radio" name="hcheck"  value="无"> 无 </label>
			        </div>
				</div>
		    </td>
		</tr>
		<%} %>
		</table>

		四、实验室检查
		<table width="80%" align="center">
		<%
		
			String labels2[]  ={"血红蛋白(HGB)","血尿酸(UA)","谷丙转氨酶(ALT)","乙肝表面抗原(HBsAg)", "谷草转氨酶AST)",
			"丙型肝炎抗体(HCV)","空腹血糖(Glu)","尿蛋白(PRO)",
				"餐后2小时血糖(PG2h)","大便隐血(OB)" ,"总胆固醇TC)","甲胎蛋白(AFP)",
				"甘油三酯(TG)", "癌胚抗原(CEA)","高密度脂蛋白胆固醇(HDL-C)","C反应蛋白(CRP)",
				"低密度脂蛋白胆固醇LDL-C)", "前列腺特异抗原(PSA)","血肌酐(Cr)"} ;
		
		String units[]  ={"g/L","μmol/L",
				      "IU/L"," ",
				      "IU/L"," ",
				      "mmol/L"," ",
					"mmol/L"," " ,
					"mmol/L","μg/L",
					"mmol/L", "μg/L",
					"mmol/L","mg/L",
					"mmol/L", "μg/L",
					"μmol/L"} ;
		
		int maxValue[] = {};
			for( int i=0; i<labels2.length; i++){
		%>
		<tr width="100%">
			<td width="50%" class="form-inline">
			<div class="form-group">
			    <div class="input-group">
			      <div class="input-group-addon" style="width:220px;"><%=labels2[i] %></div>
			      <input type="number" class="form-control" id="exampleInputAmount" >
			      <div class="input-group-addon">mmkg</div>
			    </div>
			  </div>
			
			</td>
		
		</tr>
		<%} %>
		</table>
      
      <br>
        <div class="control-group">
          <div class="controls" style="margin-left: 200px">
            <input   type="submit"  class="btn btn-success" 
         value="&nbsp;保&nbsp;&nbsp;存&nbsp;">
         	&nbsp;&nbsp;
          </div>
        </div>
      
  </form>
  
</div>

<script type="text/javascript">
	
	//alertsubmit.onclick);
</script>
</body>
</html>