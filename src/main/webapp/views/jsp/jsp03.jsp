<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <h3>jsp03</h3>

        <table class="table table-hover">
            <thead>
            <tr>
                <th>id</th>
                <th>pwd</th>
                <th>name</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="c" items="${clist}">
                <tr>
                    <td><a href="/cust/get?id=${c.id}">${c.id}</a></td>
                    <td>${c.pwd}</td>
                    <td>${c.name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</div>
