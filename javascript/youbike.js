/*
圖書館門口 sno: 0038
分佈門口 sno: 0066

sno：站點代號
sna：場站名稱(中文)
tot：場站總停車格
sbi：場站目前車輛數量
sarea：場站區域(中文)
mday：資料更新時間
lat：緯度
lng：經度
ar：地(中文)
sareaen：場站區域(英文)
snaen：場站名稱(英文)
aren：地址(英文)
bemp：空位數量
act：全站禁用狀態
*/

$.getJSON("https://crossorigin.me/http://data.taipei/youbike", function(data) {
    var lib = data.retVal['0038'];
    var gg = data.retVal['0066']

    var time =
    lib.mday.substring(0, 4)+
    "-"+lib.mday.substring(4, 6)+
    "-"+lib.mday.substring(6, 8)+
    " "+lib.mday.substring(8, 10)+
    ":"+lib.mday.substring(10, 12)+
    ":"+lib.mday.substring(12, 14);
    $("#yb_mday").html(time)

    if (lib.act != 1) {
        $("#yb_lib_sbi").html("暫停運作中");
        $("#yb_lib_bemp").html("暫停運作中");
    }
    else {
        $("#yb_lib_sbi").html(lib.sbi);
        $("#yb_lib_bemp").html(lib.bemp);
    }

    if (gg.act != 1) {
        $("#yb_gg_sbi").html("暫停運作中");
        $("#yb_gg_bemp").html("暫停運作中");
    }
    else {
        $("#yb_gg_sbi").html(gg.sbi);
        $("#yb_gg_bemp").html(gg.bemp);
    }

});
