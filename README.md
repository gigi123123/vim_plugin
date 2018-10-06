vim_plugin
----
快速搭建 vim 开发神器

快速安装
----

    curl -o- https://gitee.com/whatdy/vim_plugin/raw/master/setup.sh | bash


功能介绍
-----

- Vundle 管理插件
- 自动注释
- 多语言语法检查
- 多语言语法提示
- 代码片段快速插入
- Solarized 主题
- python 自动提示
- 快速去行尾空格
- 目录导航
- 标签导航
- 括号显示增强
- Markdown
- 集成 go 语言开发环境

#### # 部分问题

go 语言如果报错(vim-go: could not find 'gotags'. Run :GoInstallBinaries to fix it)需要执行一下操作:

    # 首先安装 golang 语言
    # 部分难安装的依赖包
    cp pkg/golang.org $GOPATH/src
    # 最后安装需要的其他包
    :GoInstallBinaries
    # 查看效果
    vim hello.go


go,python 相关文档提示:  `shift + k` 

    # golang 需要安装
    go get -u github.com/zmb3/gogetdoc


效果图
---

![image](https://gitee.com/whatdy/vim_plugin/raw/master/doc/doc01.png),
![image](https://gitee.com/whatdy/vim_plugin/raw/master/doc/doc02.png)
![image](https://gitee.com/whatdy/vim_plugin/raw/master/doc/doc03.png)

更新日志:
----
####2018年10月04日
- thinca/vim-quickrun 插件:快速运行py,golang等语言:快捷键 (F10)




