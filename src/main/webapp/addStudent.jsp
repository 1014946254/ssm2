<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/26
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>添加学生</title>
</head>
<body>
<%--添加学生--%>
<form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/addStudent">
    <p>学号:
        <input type="text" name="xh" id="textfield" />
    </p>
    <p>姓名:
        <input type="text" name="name" id="textfield2" />
    </p>
    <p>性别:
        <input type="text" name="sex" id="textfield3" />
    </p>
    <p>年龄:
        <input type="text" name="age" id="textfield4" />
    </p>
    <p>生日:
        <%--<input type="date" name="birthday" id="textfield5" value="<fmt:formatDate value="${st.birthday}" pattern="yyyy-MM-dd" />" />--%>
        <input type="date" name="birthday" id="textfield5" value="${st.birthday}"/>
    </p>
    <p>地址:
        <input type="text" name="address" id="textfield6" />
    </p>
    <p>状态:
        <input type="text" name="state" id="textfield7" />
    </p>
    <p>年级:
       <select name="gid">
           <c:forEach items="${gradeList}" var="list">
           <option value="${list.gid}">${list.gname}</option>
           </c:forEach>
       </select>
        <input type="submit" name="button" id="button" value="提交" />
    </p>
</form>
</body>
</html>
