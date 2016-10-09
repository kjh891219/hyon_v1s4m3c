<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<title></title> 

<link href="../css/style.css" rel="Stylesheet" type="text/css">
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/tool.js"></script>



</head> 
<!-- ----------------------------------------- -->
<body leftmargin="0" topmargin="0">
<%-- <jsp:include page="/menu/top.jsp" flush='false' /> --%>
<!-- ----------------------------------------- -->

<DIV class='title'>글등록</DIV>

<DIV class='content'>
<FORM name='frm' method='POST' action='./create.do'>
  <fieldset>
    <ul>
      <li>
        <label class='label' for='category'>분류</label>
        <select name='category' id="category">
           <option value="DSLR" selected="selected">DSLR</option>
           <option value="일반디카">일반디카</option>
           <option value="필름카메라">필름카메라</option>
           <option value="렌즈">렌즈</option>
        </select>
      </li>
      <hr/>
      <li>
        <label class='label' for='name'>*이름</label>
        <input type='text' name='name' id='name' value='닉네임' required="required">
        <label class='label' for='passwd'>*패스워드</label>
        <input type='password' name='passwd' id='passwd' value='1234' required="required">
      </li>
      <hr/>
     <li>
        <label class='label' for='sale_c'>*거래구분</label>
        <select name='sale_c' id="sale_c">
           <option value="팝니다" selected="selected">팝니다</option>
           <option value="삽니다">삽니다</option>
        </select>
         <label class='label' for='product_c'>*상품구분</label>
        <select name='product_c' id='product_c'>
           <option value="중고품" selected="selected">중고품</option>
           <option value="신상품">신상품</option>
        </select>
      </li>
      <hr/>
      <li>
         <label class='label' for='trading'>*거래방식</label>
         <select name='trading' id='trading'>
           <option value="직거래" selected="selected">직거래</option>
           <option value="</">택배</option>
        </select >  
        <label class='label' for='region'>*지역</label>
         <select name='region' id='region'>
           <option value="서울" selected="selected">서울</option>
           <option value="인천">인천</option>
           <option value="대구">대구</option>
           <option value="대전">대전</option>
           <option value="광주">광주</option>
           <option value="울산">울산</option>
           <option value="부산">부산</option>
           <option value="경기">경기</option>
           <option value="강원">강원</option>
           <option value="경북">경북</option>
           <option value="경남">경남</option>
           <option value="전북">전북</option>
           <option value="전남">전남</option>
           <option value="충남">충남</option>
           <option value="충북">충북</option>
           <option value="제주">제주</option>
        </select>  
      </li>
      <hr/>
      <li>
        <label class='label' for='hprice'>*희망가격</label>
        <input type='text' name='hprice' id='hprice'  required="required" value='100000'>원      
        <label class='label' for='p_day' >구입시기</label>
        <input type='text' name='p_day' id='p_day' value='2016년10월'> 예)2016년 10월 
      </li>
      <hr/>
      <li>
        <label class='label' for='quantity'>수량</label>
        <input type='text' name='quantity' id='quantity' value='1'>
      </li>
      <hr/>
       <li>
        <label class='label' for='email'>*이메일</label>
        <input type='text' name='email' id='email'  required="required" value='kkk@naver.com'>      
        <label class='label' for='phone' >*전화번호</label>
        <input type='text' name='phone' id='phone'  required="required" value='010-1111-2222'> 
      </li>
      <hr/>
      <li>
        <label class='label' for='title'>*제목</label>
        <input type='text' name='title' id='title' required="required" value='디카팔아요'>
      </li>
      <hr/>
      <li>
        <label class='label' for='content'>상세설명</label>
        <textarea rows="10" cols="40" name="content" id="content" placeholder="내용을 입력하세요">sqld책 싸게 팔아요</textarea>
      </li>
      <hr/>
      <li class='right'>
        <button type="submit">등록</button>
        <button type="button" onclick="location.href='./list.jsp'">취소</button>
      </li>         
    </ul>
  </fieldset>
</FORM>
</DIV>

<!-- -------------------------------------------- -->
<%-- <jsp:include page="/menu/bottom.jsp" flush='false' /> --%>
</body>
<!-- -------------------------------------------- -->
</html> 

