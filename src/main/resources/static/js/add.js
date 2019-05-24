
$(function () {
    var mobName = $("#mobName");
    var userName = $("#userName");
    var nickname = $("#nickname");
    var phone = $("#phone");

    $("#sb").click(function () {

        if (mobName.val() === null || mobName.val() === "") {
            alert("请填写联系人显示的名字~");
            return;
        }
        if (userName.val() === null || userName.val() === "") {
            alert("请填写联系人真实的名字~");
            return;
        }
        if (nickname.val() === null || nickname.val() === "") {
            alert("请填写联系人的昵称~");
            return;
        }
        var check = /^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;
        if (!phone.val().match(check)) {
            alert("请输入正确地手机号~");
            return;
        }
        $("form").submit();
    });

    $("#back").click(function () {
        history.back(-1);
    })
});