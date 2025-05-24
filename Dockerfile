# Dockerfile
FROM python:3.13

# 作業ディレクトリを設定
WORKDIR /app

# アプリケーションをコピー
COPY /app /app

# 依存関係をインストール
RUN apt-get update
RUN apt-get update
RUN apt-get install -y curl
RUN pip install --no-cache-dir -r requirements.txt

# ポートを公開
EXPOSE 5000

# アプリケーションを起動
CMD ["python", "main.py"]