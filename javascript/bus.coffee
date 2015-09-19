---
---

today = new Date();

# 若為週末
if today.getDay() is 6 or today.getDay() is 7
	document.getElementsByClassName("next")[0].innerHTML = "<b>假日不發車</b>"
	document.getElementsByClassName("next")[1].innerHTML = "<b>假日不發車</b>"
else
	currentDateTime = today.getHours()+':'+today.getMinutes();
	ben = document.getElementById("ben")

	# 本部

	if (today.getHours() > 18 or (today.getHours() > 17 && today.getMinutes() > 40))
		ben.innerHTML = "<b>本部末班車已過</b>";

	else if( today.getHours() < 8)
		ben.innerHTML = "8:30（約剩下" + ( 8 - today.getHours()) + "小時）"

	else if ((today.getHours() == 8 && today.getMinutes() < 30) )
		ben.innerHTML = "8:30（剩下" + (30 - today.getMinutes()) + "分鐘）"

	else
		hour = today.getHours()
		min = today.getMinutes()

		if  hour < 12 or ( hour is 12 and  min < 31)
		# 12:30 以前

			if min < 30
				ben.innerHTML = (hour + (if hour is 11 then 1 else 0)) + ":30（剩下" + (if hour is 11 then "1小時又" else "") + (30 - min) + "分鐘）"

			else
				ben.innerHTML = (hour + 1 + (if hour is 10 then 1 else 0)) + ":30（剩下" + (if hour is 10 then "1小時又" else "") + (90 - min) + "分鐘）"

		else
		# 12:30 以後

			if min < 40
				ben.innerHTML = hour + ":40（剩下" + (40 - min) + "分鐘）"

			else
				ben.innerHTML = (hour + 1) + ":40（剩下" + (100 - min) + "分鐘）"





	# 公館
	document.getElementById("gung").innerHTML = "<b>我有空再寫…</b>";

	#
	#
	#
	# /*  */
	# if (today.getHours() > 18 || (today.getHours() > 18 && today.getMinutes() > 20))
	# 	document.getElementById("gung").innerHTML = "<b>公館末班車已過</b>";
	# else if( today.getHours() < 8)
	# 	document.getElementById("gung").innerHTML = "7:45（約剩下" + ( 8 - today.getHours()) + "小時）";
	# else if ((today.getHours() == 8 && today.getMinutes() < 45) )
	# 	document.getElementById("gung").innerHTML = "7:45（剩下" + (45 - today.getMinutes()) + "分鐘）";
	# else
	# 	for (var i = 7; i < 17; i++)
	# 		if ( today.getHours() === i && today.getMinutes() < 45 )
	# 		{
	# 			document.getElementById("gung").innerHTML = i + ":45（剩下" + (45 - today.getMinutes()) + "分鐘）";
	# 			break;
	# 		}
	# 		else if( today.getHours() === i && today.getMinutes() >= 45)
	# 		{
	# 			document.getElementById("gung").innerHTML = (i+1) + ":45（剩下" + (105 - today.getMinutes()) + "分鐘）";
	# 			break;
	# 		}
