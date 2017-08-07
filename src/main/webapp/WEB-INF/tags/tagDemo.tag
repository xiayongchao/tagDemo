<%--
body-content:
    tagdependent：标签体内容直接被写入BodyContent，由自定义标签类来进行处理，而不被JSP容器解释
    jsp：接受所有JSP语法，如定制的或内部的tag、scripts、静态HTML、脚本元素、JSP指令和动作
    empty：空标记，即起始标记和结束标记之间没有内容
    scriptless：接受文本、EL和JSP动作
dynamic-attributes：支持动态属性（即EL），获取的参数名字为dynamicAttributes
trimDirectiveWhitespaces：去除空行
--%>
<%@ tag pageEncoding="UTF-8" body-content="scriptless" dynamic-attributes="dynamicAttributes" trimDirectiveWhitespaces="true" %>

<%--
name(必须)：属性名
required(必须)：指定是否必须传
rtexprvalue(可选)：是否可以使用JSP表达式
type(可选)：指定属性类型。
--%>
<%@ attribute name="htmlTitle" type="java.lang.String" rtexprvalue="true" required="true" description="网页的标题" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<!-- 这里演示了动态属性加到现有html标签的例子：当中的c:out提供两个功能：显示value之前加了空格，即确保每个属性之前存在空格；禁止escapeXML，由于这些html的属性要真实有效，因此参数名不能escapeXML -->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 设置title，删除前后的空格trim -->
    <title><c:out value="${fn:trim(htmlTitle)}"/></title>
</head>

<!-- jsp:doBody 仅在tag文件中使用，告诉容器计算JSP中本tag的body内容，并显示出来。可以加上var varReader属性和scope属性，将输入放入变量而不是显示出来 -->
<body>
<jsp:doBody/>
</body>
</html>