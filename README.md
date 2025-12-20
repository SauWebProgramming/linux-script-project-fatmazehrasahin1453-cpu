# Linux Sunucu Durum Paneli (Server Dashboard)

Bu proje, **Bilişim Sistemleri Altyapı ve Teknolojileri** dersi kapsamında hazırlanmış bir dönem ödevidir.  
Proje, Linux tabanlı bir sistemin anlık durumunu (CPU, RAM, Disk kullanımı ve aktif kullanıcı sayısı)
web tabanlı bir arayüz üzerinden otomatik olarak izlemeyi amaçlamaktadır.

Script tarafından elde edilen sistem bilgileri HTML formatında oluşturularak web sunucusu
üzerinden tarayıcıda görüntülenmektedir.

---

## Projenin Amacı 

Gerçek hayat senaryosu olarak bir sistem yöneticisinin, sunucu durumunu sürekli SSH ile
terminalden kontrol etmesi yerine, tek bir web sayfası üzerinden güncel bilgileri
takip edebilmesi hedeflenmiştir.


- Bash scripting kullanılarak sistem verileri toplanmıştır.
- Toplanan veriler HTML formatına dönüştürülmüştür.
- Web sunucusu aracılığıyla tarayıcı üzerinden erişim sağlanmıştır.
- Cron kullanılarak sistem otomatik hale getirilmiştir.

---

## Kullanılan Teknolojiler

- Ubuntu (WSL)
- Bash Script
- Nginx Web Sunucusu
- Cron

---

## Script Açıklaması

`monitor.sh` scripti çalıştığında aşağıdaki işlemleri yapar:

- Sistem tarih ve saat bilgisini alır
- CPU kullanım oranını hesaplar
- RAM kullanımını hesaplar
- Disk doluluk oranını alır
- Aktif kullanıcı sayısını tespit eder
- Bu bilgileri `/var/www/html/index.html` dosyasına HTML formatında yazar

---

## Kurulum ve Yapılandırma

### Web Sunucusu Kurulumu

Web arayüzünün görüntülenebilmesi için Nginx web sunucusu kurulmuştur:

sudo apt update  
sudo apt install nginx -y  
sudo systemctl enable nginx  
sudo systemctl start nginx  

Web sunucusunun varsayılan dizini:  
`/var/www/html`

---

### Script Çalıştırma İzni

Scriptin çalışabilmesi için çalıştırma izni verilmiştir:

chmod +x monitor.sh

---

## Otomasyon (Cronjob)

Hazırlanan `monitor.sh` scripti manuel olarak çalıştırılmamakta,
cron kullanılarak otomatik hale getirilmektedir.

Scriptin her **1 dakikada bir** çalışması için crontab düzenlenmiştir:

crontab -e

Crontab dosyasına aşağıdaki satır eklenmiştir:

* * * * * /bin/bash /home/fatmazehra/server-dashboard/monitor.sh

Bu yapı sayesinde web paneli her dakika otomatik olarak güncellenmektedir.

---

## Test ve Sonuç

Yapılandırma tamamlandıktan sonra tarayıcı üzerinden aşağıdaki adres ziyaret edilmiştir:

http://localhost

Sayfa yenilendiğinde:

- Tarih ve saat bilgisinin değiştiği
- CPU, RAM ve Disk değerlerinin güncellendiği

gözlemlenmiş ve sistemin canlı olarak çalıştığı doğrulanmıştır.

---

## Dosyalar

- monitor.sh : Sunucu durum bilgilerini toplayan bash script
- screenshot.png : Dashboard sayfasının çalıştığını gösteren ekran görüntüsü
- README.md : Proje açıklaması, kurulum ve kullanım bilgileri
 
Fatma Zehra Şahin-B241200037
