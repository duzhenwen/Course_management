<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>修改数据</title>
<style>

fieldset{
width:350px;
height:300px;
margin-left:200px;
}
#button{
margin-left:100px;
margin-top:20px;
font-size:17px;
}
legend{
font-size:26px;
font-weight:bold;
margin-bottom:40px;
}
</style>
</head>
<body>
<form action="db_handle.jsp?token=modify" method="post">
<fieldset>
<legend>修改数据</legend>
请输入修改课程编号：<input type="text" name="course_id"><br/>
<input type="submit" value="修改"  id="button">
<a href=/Course_management/index.jsp>返回主页</a>
</fieldset>
</form>
</body>
</html>