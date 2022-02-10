FROM tmaier/docker-compose:latest

# 定义环境变量
ENV APP_NAME self-hosted
ENV APP_DIR /home/$APP_NAME

# 复制文件夹
# 每个模块的target的bin资源
# COPY ./alert-app-adapter/target/bin $APP_DIR/bin
# COPY ./alert-app-adapter/target/lib $APP_DIR/lib
COPY ./self-hosted $APP_DIR/

RUN $APP_DIR/install.sh

# 指定工作目录
WORKDIR $APP_DIR

# 指定容器启动程序及参数
#ENTRYPOINT ["bash","./startup.sh"]
