FROM ubuntu:latest

RUN apt update && apt install -y python3 python3-pip

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt  # 👈 Fix applied!

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

