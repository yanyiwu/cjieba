# cjieba 

[![CI](https://github.com/yanyiwu/cjieba/actions/workflows/ci.yml/badge.svg)](https://github.com/yanyiwu/cjieba/actions/workflows/ci.yml)
[![Author](https://img.shields.io/badge/author-@yanyiwu-blue.svg?style=flat)](http://yanyiwu.com/) 
[![Performance](https://img.shields.io/badge/performance-excellent-brightgreen.svg?style=flat)](http://yanyiwu.com/work/2015/06/14/jieba-series-performance-test.html) 
[![License](https://img.shields.io/badge/license-MIT-yellow.svg?style=flat)](http://yanyiwu.mit-license.org)

其实就是 [CppJieba] 的 C语言 api 接口，
独立出来作为一个仓库的原因是不想让 [CppJieba] 变太复杂和臃肿而已。

## 用法示例

```
make
./demo
```

## 编译相关

默认 `make` 会使用 `-std=c++11` 编译 C++ 接口，并构建 `libjieba.a`
和 `demo`。

如果需要指定编译器或选项，可以覆盖 Makefile 变量：

```
make CC=clang CXX=clang++ CXXFLAGS="-std=c++11 -O2 -Wall -Wextra"
```

选项 `-DLOGGING_LEVEL=LL_WARNING` 的含义是日志级别设置为警告级别以上才打日志，
如果不设置该选项则会连 DEBUG 或者 INFO 级别的日志也打出来。

## 客服

- i@yanyiwu.com

[CppJieba]:http://github.com/yanyiwu/cppjieba
[libcppjieba]:http://github.com/yanyiwu/libcppjieba
