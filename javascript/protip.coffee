---
---
make_me_pro = () ->
    # get weather
    $.getJSON("http://api.openweathermap.org/data/2.5/weather?APPID=3eb2abdcbe5b0a49efd492f66b27498c&id=1665148&units=metric&lang=zh_tw", (data, response) ->
        if response == "success" and data.main.temp_min < 15
            protip_html = "<span class='tip'>現在外面很冷喔！只有 #{data.main.temp_min} 度而已！</span>"
        else
            protips = {{ site.data.protip | jsonify }}
            choice = Math.floor((Math.random() * protips.length))
            if protips[choice].link is null
                protip_html = "<span class='tip'>#{protips[choice].tip}</span>"
            else
                protip_html = "<a href='#{protips[choice].link}' class='tip'>#{protips[choice].tip}</a>"
        document.getElementById("highlight-banner").innerHTML = protip_html
    )

make_me_pro()
