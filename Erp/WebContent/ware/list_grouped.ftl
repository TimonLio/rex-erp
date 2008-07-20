<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>分组宝贝列表</title>
<style type="text/css">
.categoryList ul{ list-style:none; }
.categoryList li{ float:left; margin-right:20px; } 
</style>
</head>

<body>
<a href="index.htm">返回首页</a>
<br /><br />

<div>总数:${count}</div>
<br />

<div class="categoryList">
<#if categoryList??>
<#list categoryList as category>
<a href='?categoryId=${category.id}'>${category.name}</a> 
</#list>
</#if>
</div>
<br />

<#if wareList??>
<#list wareList as ware>
<div>
<@s.url id="url" action="ware">
	<@s.param name="id" value="#{ware.id}"/>
	<@s.param name="page" value="page"/>
</@s.url>
<a href="${url}">${ware.name} - (${ware.number})</a>
</div>
</#list>
</#if>
<br />

</body>
</html>