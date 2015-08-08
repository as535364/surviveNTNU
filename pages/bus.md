---
layout: page
title: 校車時間
icon: bus46.svg
permalink: /bus/
id: bus
---

<div markdown="1">
### 下一班車

- 本部 → 公館：<span id="ben">10:30 (剩 14 分鐘)</time>
- 公館 → 本部：<span id="gung">10:45 (剩 29 分鐘)</span>


本部 → 公館 | 公館 → 本部
:----:|:----:
--    |   7:40
8:30  |   8:45
9:30  |   9:30
--    |   9:55
10:30 |   10:45
--    |   11:45
12:20 |   12:15
12:30 |   12:45
13:30 |   13:45
14:30 |   14:45
15:30 |   15:45
16:30 |   16:45
17:30 |   17:45
--    |   18:20


<script type="text/javascript">

var today=new Date();

/*
if(today.getDay() === 6 || today.getDay() === 7) document.getElementsByClassName("next")[0].innerHTML = "<h3>假日不發車</h3>";
*/

var currentDateTime = today.getHours()+':'+today.getMinutes();
console.log(currentDateTime);

/* 本部 */
if (today.getHours() > 17 || (today.getHours() > 17 && today.getMinutes() > 30))
	document.getElementById("ben").innerHTML = "<b>本部末班車已過</b>";
else if( today.getHours() < 8)
	document.getElementById("ben").innerHTML = "7:30（約剩下" + ( 8 - today.getHours()) + "小時）";
else if ((today.getHours() == 8 && today.getMinutes() < 30) )
	document.getElementById("ben").innerHTML = "7:30（剩下" + (30 - today.getMinutes()) + "分鐘）";
else
	for (var i = 8; i < 17; i++)
		if ( today.getHours() === i && today.getMinutes() < 30 )
		{
			document.getElementById("ben").innerHTML = i + ":30（剩下" + (30 - today.getMinutes()) + "分鐘）";
			break;
		}
		else if( today.getHours() === i && today.getMinutes() >= 30)
		{
			document.getElementById("ben").innerHTML = (i+1) + ":30（剩下" + (90 - today.getMinutes()) + "分鐘）";
			break;
		}


		/* 公館 */
		if (today.getHours() > 18 || (today.getHours() > 18 && today.getMinutes() > 20))
			document.getElementById("gung").innerHTML = "<b>公館末班車已過</b>";
		else if( today.getHours() < 8)
			document.getElementById("gung").innerHTML = "7:45（約剩下" + ( 8 - today.getHours()) + "小時）";
		else if ((today.getHours() == 8 && today.getMinutes() < 45) )
			document.getElementById("gung").innerHTML = "7:45（剩下" + (45 - today.getMinutes()) + "分鐘）";
		else
			for (var i = 7; i < 17; i++)
				if ( today.getHours() === i && today.getMinutes() < 45 )
				{
					document.getElementById("gung").innerHTML = i + ":45（剩下" + (45 - today.getMinutes()) + "分鐘）";
					break;
				}
				else if( today.getHours() === i && today.getMinutes() >= 45)
				{
					document.getElementById("gung").innerHTML = (i+1) + ":45（剩下" + (105 - today.getMinutes()) + "分鐘）";
					break;
				}
</script>
