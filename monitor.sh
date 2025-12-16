#!/bin/bash

HTML="/var/www/html/index.html"

TARIH=$(date)
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100-$8"%"}')
RAM_TOTAL=$(free -m | awk 'NR==2{print $2}')
RAM_USED=$(free -m | awk 'NR==2{print $3}')
DISK_TOTAL=$(df -h / | awk 'NR==2{print $2}')
DISK_USEDP=$(df -h / | awk 'NR==2{print $5}')
USERS=$(who | wc -l)

cat > "$HTML" <<EOF
<html>
<head>
  <meta charset="utf-8">
  <title>Sunucu Durum Paneli</title>
</head>
<body style="font-family: Arial;">
  <h1>Sunucu Durum Paneli</h1>
  <p><b>Rapor Saati:</b> $TARIH</p>
  <ul>
    <li><b>CPU Kullanımı:</b> $CPU</li>
    <li><b>RAM:</b> ${RAM_USED}MB / ${RAM_TOTAL}MB</li>
    <li><b>Disk:</b> $DISK_USEDP (Toplam: $DISK_TOTAL)</li>
    <li><b>Aktif Kullanıcı Sayısı:</b> $USERS</li>
  </ul>
</body>
</html>
EOF
