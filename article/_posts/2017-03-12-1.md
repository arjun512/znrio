---
layout: default
title: Swagger描述REST风格的API
author: lijiaocn
createdate: 2017/03/11 19:06:24
changedate: 2017/03/12 00:55:42
categories:
tags: 技巧技术
keywords: swagger,restful
description: Swagger是一种描述RESTful APIs的方法（Specification）。它对REST API做了系统的整理，提出一套完整的描述方式。配套的UI工具（swagger-ui）和代码生成器器

---

Swagger是一种描述RESTful APIs的方法（Specification）。它对REST API做了系统的整理，提出一套完整的描述方式。并且开发了配套的UI工具（swagger-ui）和代码生成器器（swagger-codegen）。

使用Swagger不纯粹是为了生成一个漂亮的API文档，也不纯粹是为了自动生成多种语言的代码框架，重要的是，通过遵循它的标准，可以使REST API分组清晰、定义标准。并且Swagger对REST API做了系统的整理，学习使用Swagger可以对REST API形成一个系统的认识。

## 基本结构

[Swagger Specification][1]很详细地描述了Swagger的格式要求。它是一个json格式或者yaml格式的文件，前半部分描述这份API的基本情况，由下面几个Field组成：

	Field Name   Type        Desciption
	----------------------------------------
	swagger     string       使用的swagger的版本,推荐2.0   
	info        Info Object  API的源数据（metadata）
	host        string       提供API的主机名或者IP
	basePath    string       API的basePath，比如以"/"开始
	schemes     string       传输协议，http https ws wss
	consumes    string       输入数据类型，MIME types
	produces    string       输出数据类型，MIME types

紧接着是对每一个API的具体描述：

	paths       Paths Objects    每个REST API

然后是接口的安全性要求：

	security

为了能够方便清晰的描述，可以将一些通用的部分在下面的Fields中描述：

	definitions
	parameters
	responses
	securityDefinitions
	tags

最后附加一个到其它文档的链接:

	externalDocs

## 实战操作

在实际环境中，可能有非常多的REST接口，如果将这些REST接口全部定义在一个swagger文件中，这个swagger文件的行数会很多，无论是阅读还是维护都会非常不方便。

可用利用$ref属性，将swagger文件拆分成多个文件，例如：



[1]: http://swagger.io/specification/  "specification" 
