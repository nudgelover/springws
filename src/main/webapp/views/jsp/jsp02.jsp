<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <div class="container">
        <h3>jsp02</h3>
        <c:if test="${rcust!=null}">
            <h4><c:out value=" ${rcust.id}"/></h4>
            <c:if test="${rcust.id =='id01'}">
                <h4>콜센터직원</h4>
            </c:if>
        </c:if>
        <%--       jstl if else --%>
        <c:choose>
            <c:when test="${num==3}">
                <h3>NUM IS 3</h3>
            </c:when>
            <c:when test="${num==2}">
                <h3>NUM IS 2</h3>
            </c:when>
            <c:otherwise>
                <h3>NUM IS 1</h3>
            </c:otherwise>
        </c:choose>
        <h3>end page</h3>

    </div>
</div>
