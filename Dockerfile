# 1. AŞAMA: Derleme (Build)
FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY . .
RUN javac app/MerhabaDevops.java

# 2. AŞAMA: Çalıştırma (Run)
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Sadece derlenmiş dosyayı ilk aşamadan buraya kopyalıyoruz
COPY --from=build /app/app/MerhabaDevops.class ./app/
CMD ["java", "-cp", ".", "app.MerhabaDevops"]