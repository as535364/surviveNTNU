---
layout: page
title: 校車時間
icon: bus46.svg
permalink: /bus/
id: bus
---

<div markdown="1">
### 下一班車

- 本部 → 公館：<span id="ben">-</time>
- 公館 → 本部：<span id="gung">-</span>

上午       |        |        |        |       |         |         |       |
:--------:|:------:|:------:|:------:|:------:|:------:|:-------:|:-------:|
本部 → 公館 | -----  | -----  | 08:30  | 09:30  | -----  | 10:30  | -----  |
公館 → 本部 | 06:50  | 07:50  | 08:50  | 09:30* | 09:55  | 10:00  | 11:00  |

下午       |        |        |        |       |         |         |         |       |
:--------:|:------:|:------:|:------:|:-----:|:-------:|:-------:|:-------:|:-----:|
本部 → 公館 | 12:30* | 12:40  | 13:40  | 14:40  | 15:40  | 16:40  | 17:40  | -----  |
公館 → 本部 | 12:00  | 12:25  | 13:00  | 14:00  | 15:00  | 16:00  | 17:00  | 18:00  |


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
