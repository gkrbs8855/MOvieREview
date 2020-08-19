<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
총 ${MYTOTALKKKK} 건<br>

<table border="1" width="800" cellpadding="0" cellspacing="0">
<c:set var="doneLoop" value="false"/>
<c:forEach items="${MYLISTKKKKK}" var="vo">
		<tr>
			<td>${vo.pharmName}</td>
			<td>${vo.addr}</a></td>
			<td>${vo.tel}</td>
			<td>${vo.lat} ${vo.lng}</td>
		</tr>
	
</c:forEach>
</table>
<br>
${MYPAGINGKKKK}
</body>
</html>
</html>