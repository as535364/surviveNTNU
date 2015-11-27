$.getJSON("https://api.github.com/repos/communityNTNU/surviveNTNU/issues?labels=reference", function (data) {
    $.each(data, function (k,d) {
        var html = '<a href="'+d.html_url+'"><li>'+d.title+"</li></a>";
        $("#todo").append(html);
        console.log(d);
    })
})
