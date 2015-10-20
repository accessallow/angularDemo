<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<input type="text" id="mytext" />
	<p id="myparagraph">Hello</p>

	<script type="text/javascript">
		var display = $('#myparagraph');
		$('#mytext').keyup(function() {
			display.text("Hello " + $(this).val());

		});
	</script>

</body>
</html>