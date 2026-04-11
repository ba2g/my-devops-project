# Java CI/CD & Dockerization Projesi 

Bu proje, bir Java uygulamasının GitHub Actions kullanılarak otomatik olarak test edilmesi, derlenmesi ve Docker Hub üzerinde çok aşamalı (Multi-stage) bir imaj olarak dağıtılmasını kapsayan tam kapsamlı bir CI/CD pipeline çalışmasıdır.

## 🛠 Kullanılan Teknolojiler
* **Dil:** Java 17
* **Otomasyon:** GitHub Actions (CI/CD)
* **Konteynerleştirme:** Docker
* **Depolama:** Docker Hub
* **İşletim Sistemi:** Alpine Linux (Hafifletilmiş imajlar için)

## 🏗 Pipeline Aşamaları
Pipeline (`devops-pipeline.yml`) her `push` işleminde şu adımları takip eder:

1. **Kod Kalite Kontrol (Test):** Kodun içinde gerekli anahtar kelimelerin olup olmadığını denetler. Test başarısız olursa süreci durdurur.
2. **Build & Package:** Java kodunu derler.
3. **Docker Hub Login:** GitHub Secrets kullanarak güvenli bir şekilde Docker Hub'a bağlanır.
4. **Multi-Stage Build:** İmaj boyutunu optimize etmek için iki aşamalı derleme yapar:
   - **Build Stage:** JDK ile derleme.
   - **Run Stage:** Sadece JRE ile çalıştırma (Boyut optimizasyonu).
5. **Push:** Hazırlanan optimize imajı Docker Hub'a fırlatır.

## 📦 Projeyi Çalıştırma
Bu projeyi yerel makinenizde Docker yüklü olması şartıyla şu komutla çalıştırabilirsiniz:

```bash
docker run --rm ba2g/devops-app:latest