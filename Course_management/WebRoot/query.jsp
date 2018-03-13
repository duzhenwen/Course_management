<%@page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>查询</title>

<style>
input{
margin-bottom:10px;
}
legend{
font-size:28px;
font-weight:bold;
}
#button{
margin-left:100px;
margin-top:11px;
font-size:17px;
}
fieldset{
margin-left:200px;
width:350px;
height:300px;
}
</style>
</head>
<body>
<form action="db_handle.jsp?token=query" method="post">
<fieldset>
<legend>查询数据</legend>

&nbsp;&nbsp;&nbsp;&nbsp;课程编号：<input type="text" name="course_id" required><br/><br/>
<input type="submit" value="查询"  id="button">
<a href=/Course_management/index.jsp>返回主页</a>
</fieldset>
</form>
</body>
</html>