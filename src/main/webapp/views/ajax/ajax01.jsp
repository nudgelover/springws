<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>

    let ajax01 = {
        init   : function () {
            setInterval(function () {
                $.ajax({
                    url    : '/getservertime',
                    success: function (data) {
                        // alert(data)
                        ajax01.display(data);
                    },
                    error  : function () {
                        alert('error.....')
                    }
                });
            }, 1000);
        },
        display: function (data) {
            $('#server_time').text(data);
        }
    }

    $(function () {
        ajax01.init();
        //init을 필수로 넣어줘야하는 것은 아님. 근데 시작이란 의미에서 보통 넣어줌
    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
        <h3>ajax1</h3>
<%--       <h5 id="server_time">servertime</h5>--%>
        <p id="server_time"><fmt:formatDate value="${data}"></fmt:formatDate></p>

</div>
