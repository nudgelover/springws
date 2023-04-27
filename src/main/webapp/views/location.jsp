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
<script>
    let map01 = {
        map : null,
        init: function () {
            var mapContainer = document.querySelector('#map');
            var mapOption = {
                center: new kakao.maps.LatLng(37.54494981088934, 127.0567060436201), // 지도의 중심좌표
                level : 3 // 지도의 확대 레
            };
            map = new kakao.maps.Map(mapContainer, mapOption);
            var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var markerPosition = new kakao.maps.LatLng(37.54494981088934, 127.0567060436201);

// 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

// 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
            // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
            var iwContent = '<img src="/img/header.jpg" style="width: 150px"><div style="padding:5px;">알파코 성수갤러리점</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

// 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent
            });

// 마커에 마우스오버 이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'mouseover', function () {
                // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                infowindow.open(map, marker);
            });

// 마커에 마우스아웃 이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'mouseout', function () {
                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                infowindow.close();
            });
            kakao.maps.event.addListener(marker, 'click', function () {
                location.href = "https://map.naver.com/v5/directions/-/14143873.96564598,4515316.759330552,%EC%95%8C%ED%8C%8C%EC%BD%94%20%EC%A0%9C2%EC%BA%A0%ED%8D%BC%EC%8A%A4,1797916856,PLACE_POI/-/transit?c=15,0,0,0,dh";
            });
        }
    };
    $(function () {
        map01.init();
    })
</script>

<div style="padding: 30px 100px" class="col-sm-8 text-center">
    <div id="map01" class="col-sm-6">
        <%--        <img style="width: 100%" src="https://cdn.ablenews.co.kr/news/photo/200809/20080915_10_17499.gif">--%>
        <h3>Location</h3>
        <div id="map">
        </div>
    </div>
    <div class="col-sm-6">
        <h2>Glyphicon Examples</h2>
        <p>Envelope icon: <span class="glyphicon glyphicon-envelope"></span></p>
        <p>Envelope icon as a link:
            <a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
        </p>
        <p>Search icon: <span class="glyphicon glyphicon-search"></span></p>
        <p>Search icon on a button:
            <button type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-search"></span> Search
            </button>
        </p>
        <p>Search icon on a styled button:
            <button type="button" class="btn btn-info">
                <span class="glyphicon glyphicon-search"></span> Search
            </button>
        </p>
        <p>Print icon: <span class="glyphicon glyphicon-print"></span></p>
        <p>Print icon on a styled link button:
            <a href="#" class="btn btn-success btn-lg">
                <span class="glyphicon glyphicon-print"></span> Print
            </a>
        </p>
    </div>
</div>