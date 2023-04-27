<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>

    $(function () {
        jsp01.init(${num});
        //문서가 시작하면 jsp91의 init을 작동해라
    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <div class="container">
        <h3 id="jsp01">jsp01</h3>
        <fmt:parseNumber integerOnly="true" type="number" value="${num}"/>
        <%--이게 우리 은행에서 쓰는 방법이겠쥬?--%>
        <h3><fmt:formatNumber value="${num}" type="currency"/></h3>
        <fmt:formatNumber type="number" pattern="###.###$" value="${num}"/>

        <p><c:out value="${cust.id}"></c:out></p>
        <p><c:out value="${cust.name}"></c:out></p>
        <%--이게 jstl의 힘이다!! 해킹 막자!!!--%>
        <p>${cust.name}</p>
        <p><fmt:formatDate value="${cdate}"></fmt:formatDate></p>
        <c:set var="mynum" value="${num*3}"/>
        <h5><c:out value="${mynum}"/></h5>

        <p>${num*2}</p>
    </div>
</div>
