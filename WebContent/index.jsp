
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- Specify which java beans are to be used or any other java class-->
<jsp:useBean id="text" class="data.fakeDB" scope="session"/>


<!-- Different css -->
<style>

.english {
color: red;
margin: 5px;
cursor: pointer;
}
.german {
color: blue;
margin: 5px;
cursor: pointer;
}
span:hover {
background: yellow;
}
</style>
 
<html>
<head>

<title>Insert title here</title>

</head>
<body>
Text: 



<!-- Jquery is used to set some javascript events etc. -->
<script src="//code.jquery.com/jquery-1.10.2.js"></script>


<!-- JSP code that reads String arrays containing the results of the german and ALL the english words to be displayed-->
<%
	String[] current_text = text.getSentence(1);
	String[] current_trans = text.getTranslation(1);
    
	for ( int i = 0; i < current_text.length; i++ ) {
    	 
        %>
	<span germ=<%=current_trans[i] %> eng=<%=current_text[i] %>   class="english" ><%=current_text[i]%></span><%
    }
%>
<script>




$( "span[class*='english']" )
.on( "click", function() {
	
		$(this).replaceWith("<span germ ="+ $(this).attr("germ")+" eng ="
				+$(this).attr("eng")+" class='german'> "
				+$(this).attr("germ") +" </span>");	
	
});

	


</script>

</html>