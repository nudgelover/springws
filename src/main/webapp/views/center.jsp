<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #map01 > #map {
        width: 300px;
        height: 300px;
        /*지도 가져올때는 반드시 크기 지정해줘야함*/
        border: 2px solid black;
    }
</style>

<div style="padding: 30px 100px" class="col-sm-8 text-center">
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <h1><spring:message code="site.title"/></h1>
    <h1><spring:message code="site.content"/></h1>

    <img src="uimg/header.jpg" style="width: 100%"/>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/b9bb99cf52ce5.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3>Los Angeles</h3>
                    <p>LA is always so much fun!</p>
                </div>
            </div>

            <div class="item">
                <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/fdd5eda3ccd61.jpg" alt="Chicago">
                <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
                </div>
            </div>

            <div class="item">
                <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/9c29fa134989d.jpg" alt="New York">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div>
            </div>
            <div class="item">
                <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" alt="New York">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div>
            </div>
            <div class="item">
                <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/a34a5e30ee933.jpg" alt="New York">
                <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
