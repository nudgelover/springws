<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="padding: 20px 50px" class="col-sm-8 text-left">

    <h3>ajax center</h3>
    <p>Ajax란?</p>
    <p> Asynchronous JavaScript and XML의 약자입니다.
        Ajax는 빠르게 동작하는 동적인 웹 페이지를 만들기 위한 개발 기법의 하나입니다.
        Ajax는 웹 페이지 전체를 다시 로딩하지 않고도, 웹 페이지의 일부분만을 갱신할 수 있습니다.
        즉 Ajax를 이용하면 백그라운드 영역에서 서버와 통신하여, 그 결과를 웹 페이지의 일부분에만 표시할 수 있습니다.
        이때 서버와는 다음과 같은 다양한 형태의 데이터를 주고받을 수 있습니다.</p>
    <p>
        일반적인 컨트롤러로 처리하면 안된다.
        servertime 바꿀때 그 부분만 바꾸려고 하는데, 계속 새로고침되면 안되니까.. 새로운 컨트롤러로(AjaxImplController)!
    </p>


</div>
