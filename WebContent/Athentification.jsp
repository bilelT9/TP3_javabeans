<<jsp:useBean id="authentificationUtilisateur" class="beans.Authentification" scope="page"></jsp:useBean>
<% String titre ="Tentative d'authentification "; %>
<html>
<head>

<title><%= titre %></title>
</head>


<body>
<h3> <u> <%= titre  %></u></h3>
<%

String loginSaisi ="USER1" ; 
String motDePasseSaisi="PASS1" ;

%>
<jsp:setProperty property="login" name="authentificationUtilisateur" value="<%= loginSaisi %>"/>

<jsp:setProperty property="password" name="authentificationUtilisateur" value="<%=motDePasseSaisi %>"/>


<b> vous avez saisi les information suivantes</b><p>
Nom de utlisateur :  <jsp:getProperty property="login" name="authentificationUtilisateur"/></br>
Mot de passe :  <jsp:getProperty property="password" name="authentificationUtilisateur"/>
<p>
<% 
boolean valide=authentificationUtilisateur.Valide();
if(valide){
%>
<font color="green"> Ces logique </font>
<%
}else{
%>
<font color="red"> invalide</font>
<%
}
%>


</body>
</html>