<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<jsp:include page="include/header.jsp" />

		<jsp:include page="include/aside.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">주문목록</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="main">Home</a></li>
								<li class="breadcrumb-item active">주문목록</li>
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
									<h3 class="card-title">주문목록</h3>

									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 150px;">
											<input type="text" name="table_search" class="form-control float-right" placeholder="주문번호 입력">
										</div>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body table-responsive p-0" style="height: 480px;">
									<table class="table table-head-fixed text-nowrap">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>수령인</th>
												<th>주소</th>
												<th>주문가격</th>
												<th>결제일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
											<tr>
												<td>
													<a href="orderDetail">210924_332142</a>
												</td>
												<td>홍길동</td>
												<td>331-213 서울특별시 종로구 종로3가</td>
												<td>1,000원</td>
												<td>21-09-24</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
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

