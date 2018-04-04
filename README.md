# web-mnpm
>卖座cnpm内部服务

## 如何开始

1. 安装node

2. 安装yarn
  ```
  npm install yarn -g
  ```

3. 安装项目依赖
  ```
  yarn install
  ```

4. 启动项目
  ```
  make start
  ```

## 项目目录结构
```
--config 是服务配置文件
--data   是sqlite数据  
  --nfs  是cnpm publish包存储的地方
```


## 项目简介

1. 服务启动后开启2个端口7001和7002，7001是cnpm的web服务页面， 7002是cnpm的registry服务。

2. 服务在192.168.1.210 kubernetes集群上部署了， 通过配置host可以访问到210的cnpm服务
  ```
  192.168.1.210  mnpm.maizuo.com
  192.168.1.210  registry.mnpm.maizuo.com
  ```

3. 配置完cnpm的registry地址就可以拉取到卖座的@maizuo-fe/ 里面的包
  ```
  cnpm config set registry http://registry.mnpm.maizuo.com
  ```

4. 镜像存放于reg.miz.so的jike/web-mnpm


##发布脚步shell文件
根据每人设置不同发布  
规则: ./shell ${env} ${tag}  
example: ./shell dev v1.0.3  



