---
---
time_table =
  "everyday":
    "ben":
      "8:30":   8*60+30
      "9:30":   9*60+30
      "10:30": 10*60+30
      "12:40": 12*60+40
      "13:40": 13*60+40
      "14:40": 14*60+40
      "15:40": 15*60+40
      "16:40": 16*60+40
      "17:40": 17*60+40
      "NA":    99999999
    "gung":
      "6:50":   6*60+50
      "7:50":   7*60+50
      "8:50":   8*60+50
      "10:05": 10*60+ 5
      "12:00": 12*60+ 0
      "12:25": 12*60+25
      "13:00": 13*60+ 0
      "14:00": 14*60+ 0
      "15:00": 15*60+ 0
      "16:00": 16*60+ 0
      "17:00": 17*60+ 0
      "18:00": 18*60+ 0
      "NA":    99999999
  "wednesday":
    "ben":
      "8:30":   8*60+30
      "9:30":   9*60+30
      "10:30": 10*60+30
      "12:30": 12*60+30
      "12:40": 12*60+40
      "13:40": 13*60+40
      "14:40": 14*60+40
      "15:40": 15*60+40
      "16:40": 16*60+40
      "17:40": 17*60+40
      "NA":    99999999
    "gung":
      "6:50":   6*60+50
      "7:50":   7*60+50
      "8:50":   8*60+50
      "9:30":   9*60+30
      "9:55":   9*60+55
      "10:05": 10*60+ 5
      "12:00": 12*60+ 0
      "12:25": 12*60+25
      "13:00": 13*60+ 0
      "14:00": 14*60+ 0
      "15:00": 15*60+ 0
      "16:00": 16*60+ 0
      "17:00": 17*60+ 0
      "18:00": 18*60+ 0
      "NA":    99999999

update_reminder = () ->
  now_date = new Date()
  now_day = now_date.getDay()
  now_minutes = now_date.getHours()*60+now_date.getMinutes()
  today_table = if now_day is 3 then time_table["wednesday"] else time_table["everyday"]
  if now_day isnt 3
    nlst = document.querySelectorAll(".bus-table span.wednesday_only")
    nlst[i].innerHTML = "—" for i in [0...nlst.length]
  for campus, table of today_table
    for info, minutes of table
      if now_minutes < minutes
        in_hours = (minutes - now_minutes) // 60
        in_minutes = (minutes - now_minutes) % 60
        message = switch
          when info is "NA" then "<b>末班車已過</b>"
          when in_hours is 0 then "#{info}<br>【剩下 #{in_minutes} 分鐘】"
          else "#{info}<br>【剩下 #{in_hours} 小時 #{in_minutes} 分鐘】"
        document.getElementById(campus).innerHTML = message
        break

setInterval(update_reminder(), 1000*60*10)
