<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new"/>
<c:url var="NewURL" value="/admin-new"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org /TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách bài viết</title>
</head>
<body>
	<c:if test="${not empty message}">
		<div class="alert alert-${alert}">${message}</div>
	</c:if>
	<form action="<c:url value='/admin-new'/>" id="formSubmit" method="get">
		<div class="table-agile-info">
			<div class="panel panel-default">
				<div class="panel-heading">Danh sách bài viết</div>
				<div class="row w3-res-tb">
					<div class="col-sm-4 m-b-xs">
						<select class="input-sm form-control w-sm inline v-middle">
							<option value="0">Bulk action</option>
							<option value="1">Delete selected</option>
							<option value="2">Bulk edit</option>
							<option value="3">Export</option>
						</select>
						<button class="btn btn-sm btn-default">Apply</button>
					</div>
					<div class="col-sm-4">
						<div class="input-group">
							<input type="text" class="input-sm form-control"
								placeholder="Search"> <span class="input-group-btn">
								<button class="btn btn-sm btn-default" type="button">Go!</button>
							</span>
						</div>
					</div>					
					<div class="col-sm-4">
						 <div class="pull-right">
						 	<a class=" btn btn-sm btn-success" data-toggle="tooltip" title="Thêm bài viết" href="<c:url value='/admin-new?type=edit'/>"><i class="fa fa-plus-circle" ></i>Add</a>
                            <a id="btnDelete" class=" btn btn-sm btn-danger" data-toggle="tooltip" title="Xóa bài viết"><i class="fa fa-trash"></i>Delete</a>
                        </div>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table table-striped b-t b-light">
						<thead>
							<tr>
								<th style="width: 20px;"><label class="i-checks m-b-none">
										<input type="checkbox" id="checkAll"><i></i>
								</label></th>
								<th>Tên bài viết</th>
								<th>Mô tả ngắn</th>
								<th style="width: 30px;">Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${model.listResult}">
								<tr>
									<td><label class="i-checks m-b-none"><input
											type="checkbox" id="checkbox_${item.id}" value="${item.id}"><i></i></label></td>
									<td>${item.title}</td>
									<td>${item.shortDescription}</td>
									<td>
										<c:url var="editURL" value="/admin-new">
											<c:param name="type" value="edit"/>
											<c:param name="id" value="${item.id}"/>
										</c:url>
										<a id="" class=" btn btn-sm btn-primary" data-toggle="tooltip" title="Sửa bài viết" href="${editURL}"><i class="fa fa-pencil-square-o"></i></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<footer class="panel-footer">
				<div class="row">
					<div class="col-sm-5 text-center">
						<small class="text-muted inline m-t-sm m-b-sm">showing
							20-30 of 50 items</small>
					</div>
					<div class="col-sm-7 text-right text-center-xs">
						<ul class="pagination pagination-sm m-t-none m-b-none" id="pagination">
							<li><a href=""><i class="fa fa-chevron-left"></i></a></li>
							<li><a href="<c:url value='/admin-new?page=1'/>">1</a></li>
							<li><a href="<c:url value='/admin-new?page=2'/>">2</a></li>
							<li><a href=""><i class="fa fa-chevron-right"></i></a></li>
						</ul>
					</div>
				</div>
				</footer>
			</div>
		</div>
	
	<!-- 	<ul class="pagination" id="pagination"></ul> -->
		<input type="hidden" value="" id="page" name="page"/>
		<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
		<input type="hidden" value="" id="sortName" name="sortName"/>
		<input type="hidden" value="" id="sortBy" name="sortBy"/>
		<input type="hidden" value="" id="type"	name="type"/>
	</form>  
	</div>
	<script >
		var totalPages=${model.totalPage};
		var currentPage=${model.page};
		var limit=2;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages :10,
				startPage:currentPage,
				onPageClick : function(event, page) {
					if(currentPage!=page){
						$('#maxPageItem').val(limit);
						$('#page').val(page);
						$('#sortName').val('title');
						$('#sortBy').val('desc');
						$('#type').val('list');
						$('#formSubmit').submit();
					}
					
				}
			})
		});
		
		$("#btnDelete").click(function(){
			var data={};
			var ids=$('tbody input[type=checkbox]:checked').map(function(){
				return $(this).val();
			}).get();
			data['ids']=ids;
			deleteNew(data);
		});
		
		function deleteNew(data){
			$.ajax({
				url:'${APIurl}',
				type:"DELETE",
				contentType:"application/json",
				data: JSON.stringify(data),
				success:function(result){
					window.location.href="${NewURL}?type=list&maxPageItem=2&page=1&message=delete_success&alert=success";
				},
				error:function(error){
					window.location.href="${NewURL}?type=list&maxPageItem=2&page=1&message=error_system&alert=danger";
				}
			});
		}
	</script>												
</body>
</html>