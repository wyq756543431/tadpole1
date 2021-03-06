<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="./header.jsp"%>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="${ctx}/">首页</a> <span class="divider">/</span></li>
				<li><a href="${ctx}/?cid=${e.category.id}">${e.category.name}</a> <span class="divider">/</span></li>
				<li class="active">${e.title}</li>
			</ul>
			<div>
				<h2>${e.title}</h2>
				<div>
					作者：雾非雾的情思 分类：<a href="${ctx}/?cid=${e.category.id}" rel="tag">${e.category.name}</a>&nbsp;&nbsp;
					标签：<a href="${ctx}/?cid=${e.category.id}" rel="tag">${e.category.name}</a>&nbsp;&nbsp;
					时间：
					<fmt:formatDate value="${e.createdTime}" pattern="yyyy:MM:dd HH:mm:ss " />
					点击量：${e.hits} 转载自：道哥的黑板报
					</div>
					<br>
					<p>${e.content}</p>
			</div>
			<div class="row-fluid">
					<div class="well span4">
					相关文章
					</div>
					<div class="well span5">
					随机文章
					</div>
			</div>
			<div class="row-fluid">
				<div class="span9 alert alert-error">
  					欢迎光临
				</div>
			</div>
			<hr>
			<c:if test="${e.allowComment==1}">
				<!--判断评论是否需要审核  -->
				<c:if test="${blog.commentAudit==1}">
					<div class="alert">
					（评论需要审核）
					</div>
       			</c:if>
       			<form action="${ctx}/saveComment" method="post">
       			<input type="hidden" name="entry.category.id" value="${e.category.id}"/>
				<input type="hidden" name="entry.id" value="${e.id}" /><br/>
  				<div class="control-group">
    				<label class="control-label" for="inputEmail">邮箱</label>
    				<div class="controls">
     					 <input type="text" name="email" id="inputEmail" placeholder="邮箱">
   				 	</div>
 				</div>
  				<div class="control-group">
   					 <label class="control-label" for="inputAuthor">作者</label>
    				 <div class="controls">
      					<input type="text" name="author" id="inputAuthor" placeholder="作者">
    				</div>
  				</div>
  				<div class="control-group">
  					<label class="control-label"  for="textarea">内容</label>
  					<div class="controls">
  						<textarea name="content" rows="3"></textarea>
  					</div>
  				</div>
  				 <div class="control-group">
    				<div class="controls">
      					<button type="submit" class="btn  btn-primary">提交</button>
    				</div>
  				</div>
			</form>
			</c:if>
		</div>
<%@include file="./footer.jsp"%>