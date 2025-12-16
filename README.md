# Linux Sunucu Durum Paneli (Server Dashboard)

Bu proje, Linux kabuk komutlarını kullanarak sunucunun anlık durumunu
(CPU, RAM, Disk kullanımı ve aktif kullanıcı sayısı) gösteren basit bir
sunucu durum panelidir.

## Kullanılan Teknolojiler
- Ubuntu (WSL)
- Bash Script
- Nginx Web Sunucusu
- Cron

## Script Açıklaması
monitor.sh scripti çalıştığında:
- Sistem tarih ve saatini alır
- CPU kullanımını hesaplar
- RAM kullanımını hesaplar
- Disk doluluk oranını alır
- Aktif kullanıcı sayısını bulur
- Bu bilgileri `/var/www/html/index.html` dosyasına HTML olarak yazar

## Otomasyon
Script, cron kullanılarak her 1 dakikada bir otomatik çalışacak şekilde ayarlanmıştır.

## Dosyalar
- `monitor.sh` : Sunucu durumunu toplayan bash script
- `screenshot.png` : Scriptin çalıştığını gösteren ekran görüntüsü
