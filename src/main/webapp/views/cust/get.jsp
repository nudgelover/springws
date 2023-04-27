<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>


</script>

<div style="padding: 20px 70px" class="col-sm-8 text-left">

    <h1>Detail Page</h1>
    <form id="update_form" class="form-horizontal well">
        <div class="form-group">
            <label class="control-label col-sm-2" for="id">ID: </label>
            <div class="col-sm-10">
                <input type="id" class="form-control" id="id" name="id" value="${gcust.id}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">비밀번호</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="pwd" name="pwd" value="${gcust.pwd}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd2">비밀번호 재확인</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="pwd2" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">이름</label>
            <div class="col-sm-10">
                <input type="name" class="form-control" id="name" name="name" value="${gcust.name}">
            </div>
        </div>
        <button type=" button" id="update_btn" class="btn btn-default">Update</button>
        <button type="button" id="delete_btn" class="btn btn-default">Delete</button>

    </form>

</div>