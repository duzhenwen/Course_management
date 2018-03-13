<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>删除数据</title>
<style>
input{
margin-bottom:20px;
}
fieldset{
width:350px;
height:300px;
margin-left:200px;
}
#button{
margin-left:100px;
font-size:17px;
}
legend{
font-size:26px;
font-weight:bold;
}
p{
margin-bottom:4px;
font-size:22px;
}
</style>
</head>
<body>
<form action="db_handle.jsp?token=delete" method="post">
<fieldset>
<legend>删除课程</legend>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程编号：<input type="text" name="course_id" required><br/>
<input type="submit" value="删除"  id="button">
<a href=/Course_management/index.jsp>返回主页</a>
</fieldset>
</form>
</body>
</html>