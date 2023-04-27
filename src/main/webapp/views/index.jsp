<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="/js/index0421.js"></script>
    <%--카카오 지도 스크립트--%>
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb3759cb2c8c3062e2b8828c2fbb8994"></script>
    <%--차트 스크립트--%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <%--차트 2 스트립트--%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

    <%--  차트 3 - 2 스트립트--%>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <%--차트 4 스크립트 중복된건 나중에 지우쟝--%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
            background: #1E3269;
            border: #1E3269;


        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 900px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #3C5A91;
            height: 100%;
        }

        .sidenav a {
            color: #B4B4DC;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }

    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <%--            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">--%>
            <%--                <span class="icon-bar"></span>--%>
            <%--                <span class="icon-bar"></span>--%>
            <%--                <span class="icon-bar"></span>--%>
            <%--            </button>--%>
            <a class="navbar-brand" href="/">
                <span>J&N ART</span>
            </a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <%--   class="active"    클릭했을 때만 active 주는 거로 바꿔보자--%>
                <li><a href="/jsp">JSP</a></li>
                <li><a href="/map">MAP</a></li>
                <li><a href="/chart">CHART</a></li>
                <li><a href="/ajax">AJAX</a></li>
                <li><a href="/cust">Cust</a></li>
                <li><a href="/item">Item</a></li>
                <c:if test="${logincust!=null}">
                    <li><a href="#">MemberZone</a></li>
                </c:if>
                <li data-toggle="modal" data-target="#contactModal"><a href="#">Contact</a></li>
            </ul>

            <c:choose>
                <c:when test="${logincust==null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li><a href="/register"><span class="glyphicon glyphicon-pencil"></span> Register</a></li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </c:otherwise>
            </c:choose>


        </div>
    </div>
</nav>

<div class="container-fluid text-center">
    <div class="row content">
        <%-- Left menu--%>
        <c:choose>
            <c:when test="${left==null}">
                <jsp:include page="left.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${left}.jsp"/>
            </c:otherwise>
        </c:choose>
        <%--Left menu end--%>

        <%--   Center start--%>

        <c:choose>
            <c:when test="${center==null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose>

        <%--   Center end--%>
        <div class="col-sm-2 sidenav">
            <div class="well">
                <img style="width: 100%; height: 80px" src="https://t1.daumcdn.net/cfile/tistory/9985AE355CAFD76A28">
            </div>
            <div class="well">
                <img style="width: 100%; height: 80px"
                     src="https://ticketimage.interpark.com/TCMS3.0/MMain/Promotion/2303/230307081149_16007528.gif">
            </div>
        </div>
    </div>
</div>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>
</html>

<div class="modal fade" id="contactModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title text-center">CONTACT</h4>
            </div>
            <div class="modal-body text-center">
                <p>wlsgml2422@gmail.com</p>
                <p>Instagram : spring10_14</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
