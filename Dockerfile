# 1. Temel imajı seç (İçinde Java 17 olan hafif bir Linux)
FROM eclipse-temurin:17-jdk-alpine

# 2. Çalışma alanını belirle
WORKDIR /proje

# 3. Bilgisayarındaki her şeyi (kodlarını) bu konteynerin içine kopyala
COPY . .

# 4. Java kodunu konteyner içinde derle
RUN javac app/MerhabaDevops.java

# 5. Konteyner çalıştığında ne yapacağını söyle
CMD ["java", "-cp", "app", "MerhabaDevops"]