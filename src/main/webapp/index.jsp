<%@page language="java" contentType="text/html;utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <%--新的Bootstrap核心css文件--%>
    <link rel="stylesheet" href="static/css/bootstrap.css">
        <%--可选的Bootstrap主题文件（一般不引入）--%>
        <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
        <%--Jquery--%>
        <script src="static/js/jquery-1.9.1.min.js"></script>
        <%--最新的核心Bootstrap 核心JavaScript文件--%>
        <script src="/static/js/bootstrap.js"></script>
    <script>
      //指定分页提交表单
      function goPage(page) {
          //1设置页码到表单
         /* alert("我要显示第"+page+"页")*/
          $("#setPage").val(page);
          //2提交表单加页码
          $("#form1").submit();//提交表单

      }
    </script>
</head>
<body>
<a href="/getAllGrade">添加学生</a>
<form name="form1" id="form1" method="post" action="${pageContext.request.contextPath}/searchStudent">
   <input type="hidden" name="page" value="1"  id="setPage">
    姓名:<input type="text" name="name" value="${condition.name}"/>
    年龄:<input type="text" name="startAge" value="${condition.startAge}"/>-<input type="text" name="endAge" value="${condition.endAge}"/>
    <button type="submit" class="btn btn-primary" aria-label="Left Align">
        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>搜索
    </button>

<%--<input type="submit" value="搜索" name="ss"  class="btn btn-default btn-primary"/>--%>
</form>
<h2>所有学生信息如下:</h2>
<table border="2" class="table table-striped table-bordered table-hover" width="80%">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
        <td>地址</td>
        <td>状态</td>
        <td>生日</td>
        <td>年级</td>
        <td>删除</td>
        <td>修改</td>

    </tr>
    <c:forEach items="${pageInfo.list}" var="s">
        <tr>
            <td>${s.xh}</td>
            <td>${s.name}</td>
            <td>${s.age}</td>
            <td>${s.sex}</td>
            <td>${s.address}</td>
            <td>${s.state}</td>
            <td><fmt:formatDate value="${s.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
            <td>${s.gname}</td>
            <td><a href="/deleteStudent?xh=${s.xh}">删除</a> </td>
            <td><a href="/selectByXh?xh=${s.xh}">修改</a> </td>

        </tr>
    </c:forEach>
</table>
<hr>
当前是第${pageInfo.pageNum}页，每页${pageInfo.pageSize}条，共${pageInfo.total}条，共${pageInfo.pages} 页
<%--<a href="javascript:goPage(${pageInfo.navigateFirstPage})">首页</a>
<a href="javascript：goPage(${pageInfo.prePage==0?1:pageInfo.prePage})" >上一页</a>
<a href="javascript：goPage(${pageInfo.nextPage==0?1:pageInfo.nextPage})" >下一页</a>
<a href="javascript：goPage(${pageInfo.navigateLastPage})" >尾页</a>
注意中文和英文冒号
--%>


<a href="javascript:goPage(${pageInfo.navigateFirstPage})">首页</a>
<a href="javascript:goPage(${pageInfo.prePage==0?1:pageInfo.prePage})">上一页</a>
<a href="javascript:goPage(${pageInfo.nextPage==0?pageInfo.navigateLastPage:pageInfo.nextPage})">下一页</a>
<a href="javascript:goPage(${pageInfo.navigateLastPage})">尾页</a>


</body>
</html>