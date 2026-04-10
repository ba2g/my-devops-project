FROM python:3.9-slim
COPY kontrol.py /app/kontrol.py
WORKDIR /app
CMD ["python", "kontrol.py"]
