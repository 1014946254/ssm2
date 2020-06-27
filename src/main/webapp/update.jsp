<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/6
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page  isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改学生</title>
</head>
<body>
<%--修改学生--%>
<form id="form1" name="form1" method="post" action="updateStudent">

    <p>学号:
        <input type="text" name="xh" id="textfield" value="${st.xh}"  />
    </p>
    <p>姓名:
        <input type="text" name="name" id="textfield2" value="${st.name}" />
    </p>
    <p>性别:
        <input type="text" name="sex" id="textfield3" value="${st.sex}" />
    </p>
    <p>年龄:
        <input type="text" name="age" id="textfield4" value="${st.age}"/>
    </p>
    <p>生日:

        <input type="date" name="birthday" id="textfield5" value="<fmt:formatDate value="${st.birthday}" pattern="yyyy-MM-dd" />"/>
    </p>
    <p>地址:
        <input type="text" name="address" id="textfield6" value="${st.address}" />
    </p>
    <p>状态:
        <input type="text"  name="state" id="textfield7"  value="${st.state}"/>
    </p>
    <p>年级:
        <select name="gid">
            <c:forEach items="${a}" var="g">

                <option   <c:if test="${g.gid==st.gid}">selected</c:if> value="${g.gid}">${g.gname}</option>
            </c:forEach>
        </select>
        <input type="submit" name="button" id="button" value="提交" />
    </p>
</form>
</body>
</html>