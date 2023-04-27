<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #container {
        padding: 30px 150px;
    }

    .form-group {
        padding: 0 20px;
    }

</style>
<script>

    $(function () {
        register_form.init()
    });


</script>
<div id="container" class="col-sm-8 text-center">

    <h1>Register</h1>
    <form id="register_form" class="form-horizontal well">
        <div class="form-group">
            <label class="control-label col-sm-2" for="id">아이디</label>
            <div class="col-sm-10">
                <input type="id" class="form-control" id="id" name="id" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">비밀번호</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="pwd" name="pwd" required>
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
                <input type="name" class="form-control" id="name" name="name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">생년월일</label>
            <div class="col-sm-10">
                <input type="year" class="form-control" id="yy" name="yy" placeholder="년(4자)" maxlength="4"
                       required>
                <select class="form-select" id="mm" name="mm">
                    <option>월</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                </select>
                <input type="day" id="dd" name="dd" placeholder="일(2자)" maxlength="2" required></div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="gender">성별</label>
            <div class="col-sm-10">
                <input type="gender" name="gender" class="form-control" id="gender" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">이메일</label>
            <div class="col-sm-10">
                <input type="email" name="email" class="form-control" id="email" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" class="sr-only" for="phone">휴대폰번호</label>
            <div class="col-sm-10"><input type="phone" name="phone" class="form-control" id="phone" required>
            </div>
        </div>
        <button type="button" id="register_btn" class="btn btn-default">Submit</button>

    </form>

</div>

