<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="/admin-new"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org /TR/html4/loose.dtd">
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<div class="form-w3layouts">
		<c:if test="${not empty message}">
			<div class="alert alert-${alert}" role="alert">${message}</div>
		</c:if>
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">
						<c:if test="${empty model.id}">
							Thêm mới bài viết
						</c:if>
						<c:if test="${not empty model.id}">
							Chỉnh sửa bài viết 
						</c:if>
						<span class="tools pull-right"> <a class="fa fa-chevron-down"
							href="javascript:;"></a> <a class="fa fa-cog" href="javascript:;"></a> <a
							class="fa fa-times" href="javascript:;"></a>
						</span> </header>
					<div class="panel-body">
						<div class="form">
							<form method="" class="cmxform form-horizontal " id="formSubmit"
								novalidate="novalidate">
								<div class="form-group ">
									<label for="title" class="control-label col-lg-3">Tiêu
										đề</label>
									<div class="col-lg-6">
										<input class=" form-control" id="title" name="title" type="text"
											value="${model.title}" />
									</div>
								</div>
								<div class="form-group ">
									<label for="thumbnail" class="control-label col-lg-3">Hình
										đại diện</label>
									<div class="col-lg-6">
										<input class=" form-control" id="thumbnail" name="thumbnail" type="text"
											value="" />
									</div>
								</div>
								<div class="form-group ">
									<label for="shortDescription" class="control-label col-lg-3">Mô
										tả ngắn</label>
									<div class="col-lg-6">
										<input class="form-control " id="shortDescription"
											name="shortDescription" type="text"
											value="${model.shortDescription}" />
									</div>
								</div>
								<div class="form-group ">
									<label for="shortDescription" class="control-label col-lg-3">Nội
										dung</label>
									<div class="col-lg-6">
										<textarea class="form-control" rows="" cols="" id="content" name="content" style="width:456px;height:100px;">${model.content}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label col-lg-3" for="categoryCode">Thể
										Loại</label>
									<div class="col-lg-6">
										<select class="form-control m-bot15" id="categoryCode"
											name="categoryCode">
											<option value="">Chọn loại bài viết</option>
											<c:if test="${empty model.categoryCode}">
												<c:forEach var="item" items="${categories}">
													<option value="${item.code}">${item.name}</option>
												</c:forEach>
											</c:if>
											<c:if test="${not empty model.categoryCode}">
												<c:forEach var="item" items="${categories}">
													<option value="${item.code}" <c:if
														test="${item.code==model.categoryCode}">
														selected="selected"
											</c:if>>${item.name}</option>
											</c:forEach>
											</c:if>
										</select>
									</div>
								</div>
								<input type="hidden" value="${model.id}" id="id" name="id" />

								<div class="form-group">
									<div class="col-lg-offset-3 col-lg-6">
										<c:if test="${not empty model.id}">
											<button class="btn btn-primary" type="button"
												id="btnAddOrUpdateNew">Cập nhật bài viết</button>
										</c:if>
										<c:if test="${empty model.id}">
											<button class="btn btn-primary" type="button"
												id="btnAddOrUpdateNew">Thêm mới bài viết</button>
										</c:if>
										<button class="btn btn-default" type="button">Cancel</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		//var editor='';
		$(document).ready(function(){
			editor=CKEDITOR.replace('content'); //editor là ckeditor mới
		});
		$('#btnAddOrUpdateNew').click(function (e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function (i, v) {
				data["" + v.name + ""] = v.value;
			});
			data["content"]=editor.getData();
			var id = $('#id').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});
		function addNew(data) {
			$.ajax({
				url: '${APIurl}',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify(data),
				dataType: 'json',
				success: function (result) {
					window.location.href="${NewURL}?type=edit&id="+result.id+"&message=insert_success&alert=success";
				},
				error: function (error) {
					window.location.href="${NewURL}?type=list&page=1&maxPageItem=2&message=error_system&alert=danger";
				}
			});
		}
		function updateNew(data) {
			$.ajax({
				url: '${APIurl}',
				type: 'PUT',
				contentType: 'application/json',
				data: JSON.stringify(data),
				dataType: 'json',
				success: function (result) {
					window.location.href="${NewURL}?type=edit&id="+result.id+"&message=update_success&alert=success";
				},
				error: function (error) {
					window.location.href="${NewURL}?type=list&page=1&maxPageItem=2&message=error_system&alert=danger";
				}
			});
		}
	</script>
</body>

</html>