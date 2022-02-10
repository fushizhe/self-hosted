FROM tmaier/docker-compose:latest

# 定义环境变量
ENV APP_NAME self-hosted
ENV APP_DIR /home/$APP_NAME

RUN apk add --no-cache bash

# 复制文件夹
COPY ./self-hosted $APP_DIR/
# RUN chmod +x $APP_DIR/install.sh
# RUN /bin/sh $APP_DIR/install.sh

# 指定工作目录
WORKDIR $APP_DIR
RUN chmod 755 $APP_DIR/install.sh
RUN $APP_DIR/install.sh

# 指定容器启动程序及参数
# ENTRYPOINT ["bash","./install.sh"]
