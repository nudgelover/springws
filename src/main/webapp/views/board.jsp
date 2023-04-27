<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    img.a {
        vertical-align: baseline;
    }

    span {
        font-weight: 200;
    }
</style>
<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

<div style="padding: 30px" class="col-sm-8 text-left">
    <h2><img class="a" src="https://cdn-icons-png.flaticon.com/512/595/595067.png" width="30" height="30"> 공지사항</h2>
    <div style="background: lightgrey; margin:5px 0; padding: 10px">
        <span> 기타 문의사항은 국민미술관 02-1234-5678로 문의주시면 도와드리겠습니다.</span><br/>
        <span>고객센터 문의가능 시간은 평일 오전 9시부터 오후 6시까지임을 양해부탁드립니다.</span>
    </div>
    <input class="form-control" id="myInput" type="text" placeholder="궁금하신 문의사항을 검색해주세요">
    <br>
    <table class="table table-bordered table-striped text-center">
        <thead>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회수</th>
        </tr>
        </thead>
        <tbody id="myTable">
        <tr>
            <td>1</td>
            <td>예매 사이트 변경 안내드립니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>2</td>
            <td>환불 규정 안내드립니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>3</td>
            <td>미술관 운영시간 변경 안내입니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>4</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>5</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>6</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>7</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>8</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>9</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>
        <tr>
            <td>10</td>
            <td><span style="color:red; font-weight: bold">긴급안내 </span> 반고흐 특별전은 티켓은 금일 매진되었습니다.</td>
            <td>관리자</td>
            <td>2023.04.20</td>
            <td>0</td>
        </tr>


        </tbody>
    </table>
<div class="col-sm-12 text-center">
    <ul class="pagination">
        <li><a href="#">Previous</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>
</div>
