<%@page contentType="text/html;charset=utf-8"%>
<html>
<script>
function func(){
var str=document.getElementById("select");
var index=str.selectedIndex;
var text=str.options[index].text;
document.getElementById("name").value=text;
}
</script>
<style>
fieldset{
width:400px;
height:300px;
margin-left:200px;
}
legend{
font-weight:bold;
font-size:26px;
}
form input{
margin-top:10px;

}
#submit{
margin-left:100px;
font-size:17px;

}
</style>

</head>
<body>
<form action="db_handle.jsp?token=add" method="post">
<fieldset>
<legend>增加课程信息</legend>
<label for="class_num">课程编号：<input type="text" name="course_id" required></label><br/>
课程名称：<input type="text" id="name" name="name">

<select id="select" onchange="func()" required>
 <option selected="selected" disabled="disabled">=请选择课程=</option>
<option value="高数">高数</option>
<option value="j2ee架构与开发">j2ee架构与开发</option>
<option value="大学物理">大学物理</option>
<option value="c语言">c语言</option>
<option value="游戏设计">游戏设计</option>
<option value="计算机组成原理">计算机组成原理</option>
<option value="计算机导论">计算机导论</option>
<option value="大学英语">大学英语</option>
<option value="计算机网络">计算机网络</option>
<option value="大学体育">大学体育</option>
</select><br/>
选课人数：<input type="text"  name="students" required><br/>
上课时间：<input type="text" name="time" required><br/>
代课老师：<input type="text" name="teacher" required><br/>
<input id="submit" type="submit" value="添加">
<a href=/Course_management/index.jsp>返回主页</a>
</fieldset>
</form>
</body>
</html>