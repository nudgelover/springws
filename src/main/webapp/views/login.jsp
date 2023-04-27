<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #container {
        padding: 30px 250px;
    }

    .form-group {
        padding: 0 20px;
    }
</style>
<script>
    $(function () {
        login_form.init()
    });
    //스크립트 언어 위에서 아래로.. 아직 버튼 없는 상태이기에 버튼이 생성된 다음에 실행되라는 의미에서 이 함수가 필요함!
</script>

<div id="container" class="col-sm-8 text-center">

    <h1>Login</h1>
    <form id="login_form" class="form-horizontal well">
        <div class="form-group">
            <%--            <label for="id">아이디</label>--%>
            <input type="id" name="id" class="form-control" id="id" placeholder="아이디를 입력해주세요" required>
        </div>
        <div class="form-group">
            <%--            <label for="pwd"> 비밀번호 </label>--%>
            <input type="password" name="pwd" class="form-control" id="pwd" placeholder="비밀번호를 입력해주세요" required>
        </div>
        <div class="checkbox">
            <label><input type="checkbox"> Remember me</label>
        </div>
        <button type="button" id="login_btn" class="btn btn-default">Submit</button>
    </form>
</div>

