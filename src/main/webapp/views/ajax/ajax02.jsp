<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    let ajax02 = {
        init        : function () {
            this.idcheckevent();
            this.sendevent();
            this.pwdcheckevent();
        },
        idcheckevent: function () {

            $('#r_form>input[name=id]').keyup(function () {
                //#r_form>input[name=id]  : r_form안에 있는 input의 name이 id인 것을 호출
                var id = $(this).val();
                if (id.length <= 3) {
                    $('#r_form > #idspan').text('id는 4자이상 입력해주져야합니다.');
                    return;
                }
                ;
                $.ajax({
                    url    : '/checkid',
                    data   : {id: id},
                    success: function (result) {
                        if (result == 0) {
                            $('#r_form > #idspan').text('사용가능합니다');
                            $('#r_form > input[name="pwd"]').focus();
                        } else {
                            $('#r_form > #idspan').text('사용불가능합니다');

                        }
                    }

                });
            });
        },
        sendevent   : function () {
        },


        pwdcheckevent: function () {

            $('#r_form>input[name=pwd2]').keyup(function () {
                var pwd1 = $('#r_form>input[name=pwd]').keyup().val();
                var pwd2 = $(this).val();
                if (pwd1 == pwd2) {
                    $('#r_form > #pwdspan').text('비밀번호가 일치합니다.');
                } else {
                    $('#r_form > #pwdspan').text('비밀번호가 일치하지 않습니다.');
                }


            });
        }
    };


    $(function () {
        ajax02.init();

    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">

        <h3>ajax2</h3>
        <form id="r_form">
            ID <input type="text" name="id"> <span id="idspan"></span><br>
            PWD <input type="password" name="pwd"><br>
            PWD2 <input type="password" name="pwd2"> <span id="pwdspan"></span><br>
            NAME <input type="text" name="name"><br>
            <input type="button" value="Register">
        </form>

</div>
