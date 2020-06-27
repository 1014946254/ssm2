<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/26
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax</title>
    <script src="js/jquery-3.4.1.js"></script>
    <script>
      $(function () {
          $("#but1").click(function () {
          $.post("getStudentData",null,function (data) {
              //以表格的方式显示数据
              var table='<table border=2><tr><td>学号</td><td>姓名</td><td>年龄</td><td>性别</td></tr>';
              for(var i=0;i<data.length;i++){
                  var obj=data[i];
                  table=table+'<tr><td>'+obj.xh+'</td><td>'+obj.name+'</td><td>'+obj.age+'</td><td>'+obj.sex+'</td></tr>';
              }
              table=table+"</table>";
              //显示
              $("#showInfo").html(table);
          },"json");


          });
      });




    </script>
</head>
<body>
<input type="button" name="ss" value="加载学生信息" id="but1">
<div id="showInfo"></div>

</body>
</html>
