<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title> 
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/tool.js"></script>
<script type="text/javascript">
 
</script>

</head> 
<!-- ----------------------------------------- -->
<body leftmargin="0" topmargin="0">
<%-- <jsp:include page="/menu/top.jsp" flush='false' /> --%>
<!-- ----------------------------------------- -->

<div class="container" style="margin: auto;">
 <div class="table-responsive">
<TABLE class='table'>
 
  <TR class="active">
    <TH class='th'>글번호</TH>
    <TH class='th'>거래구분</TH>
    <TH class='th'>제목</TH>
    <TH class='th'>희망가격</TH>
    <TH class='th'>거래방식</TH>
    <TH class='th'>지역</TH>
    <TH class='th'>닉네임</TH>
    
  </TR>
 
<c:forEach var="vo" items="${list }">
  <TR>
    <TD class='td'>${vo.ctno}</TD>
    <TD class='td'>${vo.deal_code }</TD>
    <TD class='td'><A href="./read.do?ctno=${vo.ctno}">${vo.title}</A></TD>
    <TD class='td'>${vo.hprice}</TD>
    <TD class='td'>${vo.deal_way}</TD>
    <TD class='td'>${vo.region}</TD>
    <TD class='td'>${vo.nickname}</TD>
  </TR>
</c:forEach>
 
</TABLE>

</div>
<div style="text-align: center;">
<button type='button' onclick="location.href='./create.do'" class="btn btn-success btn-lg">등록</button>
<button type='button' onclick="location.reload();" class="btn btn-danger btn-lg">새로 고침</button>
</div>
</div>


  
<!-- -------------------------------------------- -->
<%-- <jsp:include page="/menu/bottom.jsp" flush='false' /> --%>
</body>
<!-- -------------------------------------------- -->
</html> 