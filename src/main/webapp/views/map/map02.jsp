<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #map02 > #map {
        width: 400px;
        height: 400px;
        /*지도 가져올때는 반드시 크기 지정해줘야함*/
        border: 2px solid black;
    }
</style>
<script>
    let map02 = {
        map : null,
        init: function () {
            this.display();
            $('#s_btn').click(function () {
                map02.go(37.579617, 126.977041);
            });
            $('#b_btn').click(function () {
                map02.go(35.1938469, 129.1536102);
            });
            $('#j_btn').click(function () {
                map02.go(33.458056, 126.9425);
            });
        },

        display: function () {
            var mapContainer = document.querySelector('#map');
            var mapOption = {
                center: new kakao.maps.LatLng(37.54494981088934, 127.0567060436201), // 지도의 중심좌표
                level : 5 // 지도의 확대 레벨
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
        },

        go: function (lat, lng) {
            // 이동할 위도 경도 위치를 생성합니다
            var moveLatLon = new kakao.maps.LatLng(lat, lng);
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);
            var markerPosition = new kakao.maps.LatLng(lat, lng);
// 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
        }
    };


    $(function () {
        map02.init();
    })


</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <div id="map02" class="container">

        <h3>MAP02</h3>
        <button id="s_btn" type="button" class="btn btn-primary">Seoul</button>
        <button id="b_btn" type="button" class="btn btn-primary">Busan</button>
        <button id="j_btn" type="button" class="btn btn-primary">Jeju</button>
        <div id="map"></div>
    </div>

</div>
