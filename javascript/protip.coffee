---
---
protips = {{ site.data.protip | jsonify }}

make_me_pro = () ->
    choice = Math.floor((Math.random() * protips.length))
    if protips[choice].link is null
        protip_html = "<span class='tip'>#{protips[choice].tip}</span>"
    else
        protip_html = "<a href='#{protips[choice].link}' class='tip'>#{protips[choice].tip}</a>"
    document.getElementById("highlight-banner").innerHTML = protip_html

make_me_pro()
