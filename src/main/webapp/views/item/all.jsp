<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .medium_img {
        width: 80px;
        height: 80px;
    }
    .cart{
        width: 20px;
        height: 20px;
        cursor :pointer;
    }
</style>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <h3>ITEM ALL</h3>

    <table class="table table-hover text-center">
        <thead>
        <tr>
            <th class="text-center">IMG</th>
            <th class="text-center">ID</th>
            <th class="text-center">NAME</th>
            <th class="text-center">PRICE</th>
            <th class="text-center">DATE</th>
            <th class="text-center"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="obj" items="${allItem}">
            <tr>
                <td><img class="medium_img" src="/uimg/${obj.imgname}"/></td>
                    <%--                <td><img src="img/${obj.imgname}"></td>--%>
                <td>${obj.id}</td>
                <td>${obj.name}</td>
                <td><fmt:formatNumber value="${obj.price}" type="currency"/></td>
                <td><fmt:formatDate value="${obj.rdate}"/></td>
                <td><img class="cart" src="https://cdn-icons-png.flaticon.com/512/1170/1170678.png"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
