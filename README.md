# 基于openresty-lua 插件动态渲染静态页面内容的范例


1: 安装openresty

2: 复制lua_lib/template.lua 到openresty安装目录的lualib/resty之下

3: 复制lua_lib/html.lua 到 openresty安装目录的lualib/resty/template之下（无template目录就新建）

4: nginx全局配置以下参数
```
lua_package_path "/usr/openresty/lualib/?.lua;;";
lua_package_cpath "/usr/openresty/lualib/?.so;;";
```

5: 复制my_nginx.conf到/etc/nginx/conf.d/下，用于定义vhost

6: 可以将html和lua_src里到代码文件放在 /var/www中进行测试

