<%@page contentType="text/html; charset=utf-8"%>
<html>
<head></head>
<style>
fieldset{
width:390;
height:300;
}
input{
margin-top:20px;
}
#submit{
margin-left:100px;
}
</style>
<body>
		
		<form action="db_handle.jsp?token=modify" method="post">
       <fieldset>
                请输入要修改的课程编号：<input type="text" name="course_id" required><br/>
                  课程名称：<input type="text" id="name" name="name" required><br/>
                 选课人数：<input type="text"  name="students" required><br/>
                 上课时间：<input type="text" name="time" required><br/>
                  代课老师：<input type="text" name="teacher" required><br/>
       <input id="submit" type="submit" value="修改">
          <%out.print("<a href=/Course_management/index.jsp>返回主页</a>");%>
       </fieldset>
       </form>
    
		
		




</body></html>