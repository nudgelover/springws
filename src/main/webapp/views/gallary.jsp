<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #hidden {
        display: none;
    }
</style>
<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            let value = $(this).val().toLowerCase();
            $(".thumbnail").filter(function () {
                let thumbnailCaption = $(this).find('.caption p').text().toLowerCase();
                $(this).toggle(thumbnailCaption.indexOf(value) > -1);
                //작동안함...
                // $(this).closest('.col-md-4').children('.thumbnail:not(:contains(' + value + '))').addClass('d-none');
                // $(this).closest('.col-md-4').children('thumbnail:contains(' + value + ')').removeClass('d-none');
            });
        });
    });

</script>


<div style="padding: 30px" class="col-sm-8 text-left">
    <h2>Image Gallery</h2>
    <p>The .thumbnail class can be used to display an image gallery.</p>
    <p>The .caption class adds proper padding and a dark grey color to text inside thumbnails.</p>
    <p>Click on the images to enlarge them.</p>

    <input class="form-control" id="myInput" type="text" placeholder="궁금하신 문의사항을 검색해주세요">

    <div>
        <div id="hidden" class="col-md-4 ">
            <div class="thumbnail ">
                <a href="https://www.w3schools.com/w3images/lights.jpg" target="_blank">
                    <img class="d-none" src="https://cdn.imweb.me/upload/S2017101359e025984d346/9c29fa134989d.jpg"
                         alt="Lights"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>별이 빛나는 밤, 1889년</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://www.busan.com/nas/data/content/image/2015/03/10/20150310000065_0.jpg"
                   target="_blank">
                    <img src="https://www.busan.com/nas/data/content/image/2015/03/10/20150310000065_0.jpg"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>밤의 카페 테라스, 1888년</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://cdn.imweb.me/upload/S2017101359e025984d346/fdd5eda3ccd61.jpg" targe"t="_blank">
                <img src="http://lh3.googleusercontent.com/Oen97eUUaoozC_RPXxR9Ynv2fx0MaHIkLfuM7FfAQpEo-nupjTHYvCKKwJratjhZwQ=w454-h250-n-l64"
                     alt="Nature"
                     style="width:100%; height: 200px;">
                <div class="caption">
                    <p>까마귀가 나는 밀밭, 1890년</p>
                </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://cdn.imweb.me/upload/S2017101359e025984d346/a34a5e30ee933.jpg" target="_blank">
                    <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/a34a5e30ee933.jpg" alt="Nature"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>아를의 붉은 포도밭, 1888년</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" target="_blank">
                    <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" alt="Nature"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>론강의 별이 빛나는 밤에, 1888년</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" target="_blank">
                    <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" alt="Nature"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>론강의 별이 빛나는 밤에, 1888년</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <a href="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" target="_blank">
                    <img src="https://cdn.imweb.me/upload/S2017101359e025984d346/26ba36525db75.jpg" alt="Nature"
                         style="width:100%; height: 200px;">
                    <div class="caption">
                        <p>론강의 별이 빛나는밤에, 1888년</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>



