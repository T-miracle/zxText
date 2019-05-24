$(function () {
    var search = $("#search-btn");
    search.click(function () {
        var name = $("#name");
        if (name.val() === null || name.val() === '') {
            alert("请输入~");
            return;
        }
        search.submit();
    })
});