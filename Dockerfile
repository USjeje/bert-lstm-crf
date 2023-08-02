# 基于python3.6.4
#FROM --platform=registry.docker-cn python:3.6.4
FROM tensorflow/tensorflow:1.12.0-devel-gpu-py3

# 维护者
MAINTAINER "lbh" "lbh@email.com"

# 为镜像添加源数据标签信息
LABEL version="0.0.1" date="2023-07-25"
LABEL description="This docker provides the NER function of ORG, LOC and PER"

#支持中文
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# docker工作目录为/app
WORKDIR /app

# 挂载
VOLUME '/var/pbx/lbh/ner/log':rw

# 暴露端口
EXPOSE 8101

# 将本地Dockerfile所处文件夹的所有文件copy到docker的工作目录
COPY . /app

# 安装python第三方库
RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt

# docker run时的默认指令
CMD [ "sh", "/app/shell/deploy.sh" ]
