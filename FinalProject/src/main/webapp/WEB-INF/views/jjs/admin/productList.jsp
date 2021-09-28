<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>주말농장 | 관리자페이지</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jjs/adminMain.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jjs/productList.js"></script>
<style>
textarea {
	resize: none;
}

input[type="file"] {
	display: none;
}

a:not([href]){
color : gray;

text-decoration : none;

}
.modal {
	overflow-y: auto;
}
</style>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<input type="hidden" value="${pageContext.request.contextPath}/resources/upload" id="src">

		<jsp:include page="include/header.jsp" />

		<jsp:include page="include/aside.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">주말장터 관리</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="main">Home</a></li>
								<li class="breadcrumb-item active">주말장터 관리</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title mt-2">주말장터 관리</h3>
									<select class="form-control float-right" id="categorySelect" style="width: 150px;">

									</select>
								</div>
								<!-- /.card-header -->
								<c:if test="${listcount > 0 }">
									<div class="card-body">
										<form action="productList">
											<div class="input-group float-right" style="width: 400px;">
												<input type="hidden" value="${search_field}" id="search_field">
												<select id="productSelect" name="search_field">
													<option value="0" selected>상품이름</option>
													<option value="1">상품코드</option>
													<option value="2">카테고리명</option>
												</select>
												<input name="search_word" type="text" class="form-control" placeholder="상품이름 입력하세요" value="${search_word}" id="search_word">
												<button id="productSearch" class="btn btn-primary" type="submit">검색</button>
											</div>
										</form>
										<button class="btn btn-primary mb-3" id="productAddBtn">상품등록</button>
										<table class="table table-bordered text-center">
											<thead>
												<tr>
													<th><input type="checkbox" id="allCheck" name="allCheck"></th>
													<th>상품 이미지</th>
													<th>상품명</th>
													<th>상품코드</th>
													<th>카테고리명</th>
													<th>상품등록일</th>
													<th>수정</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${productlist}" var="p">
													<tr>
														<td class="align-middle">
															<input name="RowCheck" type="checkbox" value="${p.product_code}">
														</td>
														<td class="align-middle">
															<img src="${pageContext.request.contextPath}/resources/upload${p.product_img}" style="width: 85px; height: 70px;">
														</td>
														<td class="align-middle">
															<div>
																<a href="productDetail?code=${p.product_code}">${p.product_name}</a>
															</div>
														</td>
														<td class="align-middle">
															<div>${p.product_code}</div>
														</td>
														<td class="align-middle">
															<div>${p.category_name}</div>
														</td>
														<td class="align-middle">
															<div>${p.product_date}</div>
														</td>
														<td class="align-middle">
															<div>
																<a class="btn btn-info" href="productModifyView?code=${p.product_code}">수정</a>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<!-- /.card-body -->
									<div class="card-footer clearfix">
										<c:if test="${listcount > 0}">
											<button class="btn btn-danger selectionDelete">선택삭제</button>
										</c:if>
										<ul class="pagination m-0 justify-content-center">
											<c:if test="${page <= 1 }">
												<li class="page-item"><a class="page-link gray">«</a></li>
											</c:if>
											<c:if test="${page > 1 }">
												<li class="page-item"><a href="productList?page=${page-1}&search_field=${search_field}&search_word=${search_word}" class="page-link">«</a></li>
											</c:if>

											<c:forEach var="a" begin="${startpage}" end="${endpage}">
												<c:if test="${a == page }">
													<li class="page-item "><a class="page-link gray">${a}</a></li>
												</c:if>
												<c:if test="${a != page }">
													<li class="page-item"><a href="productList?page=${a}&search_field=${search_field}&search_word=${search_word}" class="page-link">${a}</a></li>
												</c:if>
											</c:forEach>

											<c:if test="${page >= maxpage }">
												<li class="page-item"><a class="page-link gray">»</a></li>
											</c:if>
											<c:if test="${page < maxpage }">
												<li class="page-item"><a href="productList?page=${page+1}&search_field=${search_field}&search_word=${search_word}" class="page-link">»</a></li>
											</c:if>
										</ul>
									</div>
								</c:if>

								<c:if test="${listcount == 0 }">
									<p class="text-center h2 mt-3 mb-3 productNo">
										<span>등록된 상품이 없습니다.</span>
									</p>
								</c:if>
							</div>
							<!-- /.card -->
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<jsp:include page="modal/productModal.jsp" />

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<jsp:include page="include/footer.jsp" />
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<jsp:include page="include/plugin_js.jsp" />

</body>
</html>

