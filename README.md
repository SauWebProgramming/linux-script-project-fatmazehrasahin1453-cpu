# Linux Sunucu Durum Paneli (Server Dashboard)

Bu proje, Linux kabuk komutları kullanılarak sunucunun anlık durumunu
(CPU, RAM, Disk kullanımı ve aktif kullanıcı sayısı) gösteren basit bir
web tabanlı sunucu durum panelidir.

Script tarafından elde edilen bilgiler bir HTML dosyasına yazılır ve
web tarayıcısı üzerinden görüntülenir.

---

## Kullanılan Teknolojiler

- Ubuntu (WSL)
- Bash Script
- Nginx Web Sunucusu
- Cron

---

## Script Açıklaması

`monitor.sh` scripti çalıştığında:

- Sistem tarih ve saat bilgisini alır
- CPU kullanım oranını hesaplar
- RAM kullanımını hesaplar
- Disk doluluk oranını alır
- Aktif kullanıcı sayısını tespit eder
- Bu bilgileri `/var/www/html/index.html` dosyasına HTML formatında yazar

---

## Otomasyon (Cronjob)

Script, **cron** kullanılarak her **1 dakikada bir** otomatik çalışacak
şekilde ayarlanmıştır.



## Dosyalar

- **monitor.sh** : Sunucu durum bilgilerini (CPU, RAM, Disk, aktif kullanıcı) toplayan bash script  
- **screenshot.png** : Scriptin çalıştığını ve web panelinin güncellendiğini gösteren ekran görüntüsü  
- **README.md** : Proje açıklaması, kullanılan teknolojiler ve otomasyon bilgileri

