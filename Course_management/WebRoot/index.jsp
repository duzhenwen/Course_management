<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>处理课程页面</title>
<style>
legend{
font-size:28px;
font-weight:bold;
}
input{
font-size:20px;
margin-top:20px;
margin-left:110px;
}
fieldset{
width:350px;
height:300px;
margin-left:200px;
}
img{
width：150px;
height:150px;
margin-top:20px;
margin-left:10px;
}
.handle{
width:180px;
}
.picture{
width:100px;
}
div{
float:left;
}
</style>
</head><body>
<fieldset>
<legend>课程修改系统</legend>
<div>
<div class="picture">
<img src="picture.jpg">
</div>

<div class="handle">
<input type="button" name="add" value="增加课程" onclick="window.location.href='/Course_management/add.jsp'"><br/>
<input type="button" name="delete" value="删除课程" onclick="window.location.href='/Course_management/delete.jsp'"><br/>
<input type="button" name="change" value="修改课程" onclick="window.location.href='/Course_management/modify_handle.jsp'"><br/>
<input type="button" name="query" value="查找课程" onclick="window.location.href='/Course_management/query.jsp'">
</div>

</div>
</fieldset>
</body></html>