# 使用固定版本，防止更新导致bug
FROM nginx:1.17

WORKDIR /app
COPY nginx.conf.template /app/nginx.conf.template
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh


# Ensure UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8
ENV TIME_ZONE Asia/Shanghai

EXPOSE 80
