---
---
protips = [
    '如果不想被當成新手，師大路口綠燈時別急著走！',
    '師大路口水果店的綜合果汁第二杯半價可寄杯！',
    '<a href="https://livehouse.in/channel/365461/record/-K3V6D4UUmEPYevkVI_R">錯過了啦啦？到師青看重播！</a>'
]

make_me_pro = () ->
    choice = Math.floor((Math.random() * protips.length))
    document.getElementById("protip").innerHTML = "Pro Tip: " + protips[choice]

make_me_pro()
