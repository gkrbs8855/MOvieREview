<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script> 
<script>
$(document).ready(function() { 	
	/* $("#button").click( function() {
		$.ajax({ 
			url:"/SERLVET_SERVLET?myaction=insert",
			type :"get",
			contentType:"application/x-www-form-urlencoded; charset=UTF-8", 
			data:"deptno=10&sal=1000",
			dataType:"text", //json xml html 
			success:function(jsonString) {   //"[{'empno':'7788', 'ename':'SMITH'}, {...}]"
				console.log("성공josnString:" + jsonString); 
				
				var jsonObj = JSON.parse(jsonString);
				//console.log(jsonObj[0].empno);    // [object] --  {'empno':'7788', 'ename':'SMITH'}
				$.map(jsonObj , function(json,i){
					console.log(i + "," + json.ename+"<br>");
				});
				$("#RESRES_div").html(htmlStr);
			}, 
			error:function() { alert("에러"); }
		});	
	}); */

	
	/* $("#").click( function() {
		$.get( "/SERVLET_SERVLET?myaction=insert", 
		         "deptno=10&sal=1000", 
		         function(resString){ console.log(resString); } 
	 ); */	
});
</script>

</head>
<body>
<a href="chart_wordcloud_testjsp_sample.jsp?movieCode=20193450">wordcloud</a>

<%-- <c:forEach items="${KEY_LIST}" var="evo" varStatus="st">
	<td>${evo.empno}  ${st.count}   ${st.index} </td>
</c:forEach> --%>  
</body>
</html>