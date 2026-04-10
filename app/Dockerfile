# 1. Aşama: Hangi altyapıyı kullanacağız? (Java 17)
FROM openjdk:17-jdk-slim

# 2. Aşama: Kodlarımızı konteynerin içine kopyalayalım
COPY MerhabaDevops.java /app/MerhabaDevops.java

# 3. Aşama: Konteynere çalışma dizini belirleyelim
WORKDIR /app

# 4. Aşama: Java kodunu derleyelim
RUN javac MerhabaDevops.java

# 5. Aşama: Konteynır çalıştığında ne yapacağını söyleyelim
CMD ["java", "MerhabaDevops"]