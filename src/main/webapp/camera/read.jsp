<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
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
<h1 style="text-align: center;">${cameraVO.title}</h1>
<div style="float: left;">
  내용 : ${cameraVO.content}
</div>
<div style="float: right;">
<h2><상품정보></h2>
<table border="1">
  <tr>
  <td style="text-align: center;">거래구분</td>
  <td style="text-align: center;">${cameraVO.deal_code}</td>
  <tr>
  <td style="text-align: center;">분류</td>
  <td style="text-align: center;">${cameraVO.category}</td>
  </tr>
  <tr>
  <td style="text-align: center;">상품구분</td>
  <td style="text-align: center;">${cameraVO.product_code}</td>
  </tr>
  <tr>
  <td style="text-align: center;">거래지역</td>
  <td style="text-align: center;">${cameraVO.region}</td>
  </tr>
  <tr>
  <td style="text-align: center;">거래방식</td>
  <td style="text-align: center;">${cameraVO.deal_way}</td>
  </tr>
  <tr>
  <td style="text-align: center;">구입시기</td>
  <td style="text-align: center;">${cameraVO.purc_date}</td>
  </tr>
  <tr>
  <td style="text-align: center;">수량</td>
  <td style="text-align: center;">${cameraVO.quantity}</td>
  </tr>
  <tr>
  <td style="text-align: center;">희망가격</td>
  <td style="text-align: center;">${cameraVO.hprice}</td>
  </tr>       
</table>  


<h2><판매자 정보></h2>
 <table border="1">
  <tr>
  <td style="text-align: center;">판매자</td>
  <td style="text-align: center;">${cameraVO.nickname}</td>
  <tr>
  <tr>
  <td style="text-align: center;">이메일</td>
  <td style="text-align: center;">${cameraVO.email}</td>
  <tr>
  <tr>
  <td style="text-align: center;">전화번호</td>
  <td style="text-align: center;">${cameraVO.tel}</td>
  <tr>
 </table>
</div>

<DIV class='bottom'>
  <button type='button' onclick="location.href='./list.do'">목록</button>
</DIV>
<!-- -------------------------------------------- -->
<%-- <jsp:include page="/menu/bottom.jsp" flush='false' /> --%>
</body>
<!-- -------------------------------------------- -->
</html> 