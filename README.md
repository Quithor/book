# 图书借阅管理Application

## 一、应用背景

没有背景，这个项目只是作业

## 二、应用部署

1. 在要部署的服务器上先运行一次`book.sql`脚本，运行前确保数据库中没有名为`book`的数据库，如果有，请将sql脚本中的前行中的book改为你需要的名字，就像下面演示的位置。

```
CREATE DATABASE book;
                ^^^^
USER book;
     ^^^^
```