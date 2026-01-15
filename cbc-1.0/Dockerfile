# 1. 使用原生 32-bit Debian (基底)
FROM i386/debian:bookworm-slim

# 2. 設定非互動模式
ENV DEBIAN_FRONTEND=noninteractive

# 3. 安裝開發工具包
# 只安裝環境工具，不複製程式碼
RUN apt-get update && apt-get install -y --no-install-recommends \
    openjdk-17-jdk-headless \
    make \
    gcc \
    libc6-dev \
    ca-certificates \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# 4. 設定工作目錄
WORKDIR /app

# 5. 預設指令
CMD ["/bin/bash"]