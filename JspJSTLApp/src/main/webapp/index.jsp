<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Output</title>
</head>
<body>

	<%--1 <c:set var="data" value="kmnk" /><br/>
	<c:out value="${data}" />--%>

	<%--2
	<c:set var="x" value="10"></c:set>
	<c:set var="y" value="20"></c:set>
	<c:set var="z" value="${x+y}" scope="application"></c:set>
	
	<h1><c:out value="${z }"></c:out></h1>
	--%>

	<%--3 
	<c:set scope="request" var="name" value="Mahesh Nagendra Kumar" />
	<h1 style='color: red; text-align: center;'>
		THE USERNAME IS ::
		<c:out value="${name}" />
	</h1>
	<br />

	<c:set var='x' value='10' />
	<c:set var='y' value='20' />
	<c:set var='z' value='${x+y}' scope="application" />

	<h1 style='color: blue; text-align: center;'>
		The result is ::
		<c:out value='${z}' />
	</h1>
	<br />

	<h1 style='color: green; text-align: center;'>
		The data from query string is ::
		<c:out value='${param.username}' default="iNeuron" />
	</h1>
	--%>

	<%--4 
	<h1 style='color:blue; text-align: center;'>THE USERNAME IS :: ${param.userName }</h1>
	
	<c:catch var="e">
		<jsp:scriptlet>
			Integer userAge = Integer.parseInt(request.getParameter("userAge"));
		</jsp:scriptlet>
		<h1 style='color:blue; text-align: center;'>THE USERAGE IS :: ${param.userAge }</h1>
	</c:catch>
	
	<c:if test="${!empty e }">
		<br/><h1 style='color:red; text-align: center;'>The exception raise is :: ${e}</h1>
	</c:if>
	
	<h1 style='color:blue; text-align: center;'>
		THE USERHEIGHT IS :: ${param.userHeight }
	</h1>
	--%>

	<%--5 
	<%
	int[] arr = {};
	java.util.ArrayList al = new java.util.ArrayList();
	%>
	${empty sachin }
	<br /> ${empty "sachin"}
	<br /> ${empty null }
	<br /> ${empty arr }
	<br /> ${empty al }

	<hr />

	${10+null}
	<br /> ${empty null}
	<br /> ${null}
	<br />
	--%>

	<%--6
	<c:choose>
		<c:when test="{param.p<0}">{param.p} is less than 0 </c:when>
		<c:when test="{param.p>0}">{param.p} is greater than 0</c:when>
	
	</c:choose>
	
	--%>

	<%-- Traditional for loop --%>
	<%--7 
	<table border='1' bgcolor='cyan'>
		<c:forEach var="i" begin="1" end="10" step="1">
			<tr>
				<td>2 * ${i}</td>
				<td>${2*i }</td>
			</tr>
		</c:forEach>
	</table>

	<%
	String names[] = { "sachin", "kohli", "dhoni", "Gill" };
	request.setAttribute("names", names);
	List<String> stringList = new ArrayList<String>();
	stringList.add("MI");
	stringList.add("RCB");
	stringList.add("CSK");
	stringList.add("GT");
	request.setAttribute("stringList", stringList);
	%>
	<br />
	<br />
--%>

	<%--Enhanced for loop to iterate collection and array --%>
	<%--7 
	<c:forEach var="name" items="${names}">
		<h1>Name is :: ${name}</h1>
	</c:forEach>
	<br />
	<br />
--%>
	<%--Enhanced for loop to iterate collection and array --%>
	<%--
	<c:forEach var="list" items="${stringList}">
		<h1>Name is :: ${list}</h1>
	</c:forEach>
--%>

	<%--Defining the URL to send the request --%>
	<c:url value="http://www.google.com" var="googleURl" scope="request" />

	<%-- perform sendRedirection --%>
	<c:redirect url="${googleURl}" />


</body>
</html>