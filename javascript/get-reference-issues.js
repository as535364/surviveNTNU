$.getJSON("https://api.github.com/repos/communityNTNU/surviveNTNU/issues?labels=reference", function (data) {
    $.each(data, function (k,d) {
        var html = '<li><a href="'+d.html_url+'">'+d.title+"</a></li>";
        $("#todo").append(html);
        console.log(d);
    })
})
