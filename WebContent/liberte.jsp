<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liberte</title>
</head>
<body>
<center>
<H1>Bonjour la liberté </H1>
<jsp:useBean id="LibBean" class="beans.Democratie" scope="session"/>

<p>Passon a vote .....  </p>

<%LibBean.voter(); %>  
<p> le nombre de vois apres le votre est : </p>
<jsp:getProperty name="LibBean" property="voix" />

</center>

</body>
</html>