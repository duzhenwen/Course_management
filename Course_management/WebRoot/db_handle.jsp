<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.sql.*"  pageEncoding="utf8"%>
<html>
<head>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
Connection connection;
PreparedStatement statement;
ResultSet resultset;
String sql="";
String token=request.getParameter("token");
try{
 	Class.forName("com.mysql.jdbc.Driver");
 	}catch(ClassNotFoundException e){}
String url="jdbc:mysql://localhost/course_management?useUnicode=true&characterEncoding=UTF-8";
String root="root";
String pwd="root";
String name,teacher,time;
int course_id=0,students=0;
int flag=0;
connection=DriverManager.getConnection(url,root,pwd);
if(token.equals("add"))
{
		name=request.getParameter("name");
		teacher=request.getParameter("teacher");
		time=request.getParameter("time");
		String stu=request.getParameter("students"),cou=request.getParameter("course_id");
		try{
		students=Integer.parseInt(stu);
		course_id=Integer.parseInt(cou);
		flag=1;
		}
		catch(Exception e)	{
		flag=0;
		out.println("<h2>请检查输入的数据格式<br/>课程编号与选课人数为整型类型</h2>");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		}
		if(flag==1){
		sql="INSERT INTO course VALUES(?,?,?,?,?)";
		statement=connection.prepareStatement(sql);
		statement.setInt(1,course_id);
		statement.setString(2,name);
		statement.setString(3,teacher);
		statement.setInt(4,students);
		statement.setString(5,time);
		try{
		statement.executeUpdate();
		out.println("<h2>课程添加成功</h2>");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		}catch(Exception e){
		out.println("<h3>课程编号为主键，即此编号的课程已经在数据库中存在<h3>&nbsp;&nbsp;<a href=/Course_management/index.jsp>返回主页</a>");	
				
		}
		}
		
}
else if(token.equals("delete"))
{
		name=request.getParameter("name");
		teacher=request.getParameter("teacher");
		try{
		course_id=Integer.parseInt(request.getParameter("course_id"));
		flag=1;
		}
		catch(Exception e){
		out.println("输入课程编号必须为整型");
		out.print("<a href=/Course_management/delete.jsp>返回删除数据输入页面</a>");
		
		flag=0;		
		}
		if(flag==1){
		sql="SELECT * FROM course WHERE course_id=?";
		statement=connection.prepareStatement(sql);
		statement.setInt(1,course_id);
		resultset=statement.executeQuery();
		while(resultset.next())
		{
   		course_id=resultset.getInt(1);
		name=resultset.getString(2);
		teacher=resultset.getString(3);
		students=resultset.getInt(4);
		time=resultset.getString(5);
		out.print("<table border=1>");
		out.print("<tr>");
		out.print("<th>课程编号</th>");
		out.print("<th>课程名字</th>");
		out.print("<th>代课老师</th>");
		out.print("<th>学生人数</th>");
		out.print("<th>上课时间</th>");
		out.print("</tr>");
		out.print("<tr>");
		out.println("<td>"+course_id+"</td>");
		out.println("<td>"+name+"</td>");
		out.println("<td>"+teacher+"</td>");
		out.println("<td>"+students+"</td>");
		out.println("<td>"+time+"</td>");
		out.print("</tr>");
		}
		sql="DELETE FROM course WHERE course_id=?";
		statement=connection.prepareStatement(sql);
		statement.setInt(1,course_id);
		try{
		int i=statement.executeUpdate();
		if(i==1){
		out.println("删除成功");
		
		
		}else
		out.println("数据库中无此数据...");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		}catch(Exception e){
		out.println("删除失败....");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		}
        }
  }
else if(token.equals("query")){
		int a=0;
		try{
		course_id=Integer.parseInt(request.getParameter("course_id"));
		flag=1;
		}
		catch(Exception e){
		out.println("输入课程编号必须为整型");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		flag=0;		
		}
		if(flag==1){
		sql="SELECT * FROM course WHERE course_id=?";
		statement=connection.prepareStatement(sql);
		statement.setInt(1,course_id);
		resultset=statement.executeQuery();
		while(resultset.next())
		{
		a=1;
   		course_id=resultset.getInt(1);
		name=resultset.getString(2);
		teacher=resultset.getString(3);
		students=resultset.getInt(4);
		time=resultset.getString(5);
		out.print("<table border=1>");
		out.print("<tr>");
		out.print("<th>课程编号</th>");
		out.print("<th>课程名字</th>");
		out.print("<th>代课老师</th>");
		out.print("<th>学生人数</th>");
		out.print("<th>上课时间</th>");
		out.print("</tr>");
		out.print("<tr>");
		out.println("<td>"+course_id+"</td>");
		out.println("<td>"+name+"</td>");
		out.println("<td>"+teacher+"</td>");
		out.println("<td>"+students+"</td>");
		out.println("<td>"+time+"</td>");
		out.print("</tr>");
		out.print("<a href=/Course_management/index.jsp>返回首页</a>");
		
		}
		if(a==0){
		out.println("数据库中无此数据...");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		}
      }
}
else if(token.equals("modify")){
  
        name=request.getParameter("name");
		 teacher=request.getParameter("teacher");
		 time=request.getParameter("time");
		 String stu=request.getParameter("students"),cou=request.getParameter("course_id");
		try{
		students=Integer.parseInt(stu);
		course_id=Integer.parseInt(cou);
		flag=1;
		
		}
		catch(Exception e)	{
		out.println("输入课程编号必须为整型");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		flag=0;
		
		}
		if(flag==1){
		sql="UPDATE course SET name=?,students=?,time=?,teacher=? WHERE course_id=?";
		statement=connection.prepareStatement(sql);
		statement.setString(1,name);
		statement.setString(3,teacher);
		statement.setInt(2,students);
		statement.setString(4,time);
		statement.setInt(5,course_id);
		int i=statement.executeUpdate();
		if(i==1){
		out.println("修改成功");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		}
		else{
		out.println("修改失败...");
		out.print("<a href=/Course_management/index.jsp>返回主页</a>");
		
		}
		 }
		 }

%>
</body>
</html>