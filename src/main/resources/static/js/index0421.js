let login_form = {
    init: function () {
        //init 화면에 이벤트 처리
        $('#login_btn').click(function () {
            login_form.send()
        });
    },
    send: function () {
        $('#login_form').attr({
            'action': '/loginimpl',
            'method': 'get'
        });
        $('#login_form').submit();
    }
}

// 회원가입 form 제출 함수--------------------------------------------
let register_form = {
    init: function () {
        //init 화면에 이벤트 처리
        $('#register_btn').click(function () {
            register_form.send()
        });
    },
    send: function () {
        $('#register_form').attr({
            'action': '/registerimpl',
            'method': 'get'
        });
        $('#register_form').submit();
    }
}

// 아이디 바꾸는 방법~~~~~~~~
let jsp01 = {
    data: 0,
    init: function (num) {
        // <%--this.data = ${num*2};--%>
        this.data = num;
        // this.data = '<c:out value=" ${num*2}"/>';
        // 이렇게 하면 문자로...!
        this.display();
    },
    display() {
        $('#jsp01').text(this.data + '');
    }
    //jsp01이 숫자로 바뀌네..!!
};


