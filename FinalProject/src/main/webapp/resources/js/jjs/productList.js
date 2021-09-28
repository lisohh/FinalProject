function categoryList(){
	$.ajax({
		type : "post",
		url : "categoryList",
		dataType : 'json',
		success : function(data){
			$("#categorySelect > option").remove();
			$(data.categoryList).each(function(index, item){
				var option = "<option value='" + item.category_code + "'>"
						   + item.category_name + "</option>";
				$("#categorySelect").append(option);
			});
		}
	});
}

function selectionDelete(){
	var valueArr = new Array();
	 var list = $("input[name='RowCheck']");
	 for(var i = 0; i < list.length; i++){
		 if(list[i].checked){
			 valueArr.push(list[i].value);
		 }
	 }
	 if(valueArr.length == 0){
		$("#noSelectionModal").modal({backdrop: 'static', keyboard: false});
	 }else{
		 $("#DeleteModal").modal({backdrop: 'static', keyboard: false});
		 $("#Deletebtn").click(function(){
			 $("#DeleteModal").modal('hide');
			 $.ajax({
				url : 'productSelectionDelete',
				type : 'post',
				traditional : true,
				data : {valueArr : valueArr},
				success : function(data){
					if(data == valueArr.length){
						location.href="productList";
					}
				}
			 });
		 });
	 }
}

function go(page) {
	allcheck();
	var category_name = $("#categorySelect").val();
	var data = "category_name=" + category_name + "&page=" + page;
	productCategoryList(data);
}

function setPaging(href, digit) {
	var output = "<li class=page-item>";
	gray = "";
	if (href == "") {
		gray = " gray";
	}
	anchor = "<a class='page-link" + gray + "'" + href + ">" + digit
			+ "</a></li>";
	output += anchor;
	return output;
}

function productCategoryList(sdata){
	var src = $("#src").val();
	$.ajax({
		type : "post",
		url : "productCategoryList",
		data : sdata,
		dataType : 'json',
		success : function(data) {
			console.log(data)
			if (data.listcount > 0) {
				$("tbody").remove();
				var num = data.listcount - (data.page - 1) * data.limit;
				var output = "<tbody>";
				$(data.productlist).each(function(index, item) {
					output += "<tr><td class='align-middle'><input name='RowCheck' "
							+ "type='checkbox' value='"
							+ item.product_code
							+ "'></td>";
					output += "<td class='align-middle'><img src='" + src + item.product_img + "' style='width : 85px; height : 70px;'>"
							+ "</td>";
					output += "<td class='align-middle'><div><a href='productDetail?code="
							+ item.product_code
							+ "'>"
							+ item.product_name
							+ "</div></td>";
					output += "<td class='align-middle'><div>"
							+ item.product_code
							+ "</div></td>";
					output += "<td class='align-middle'><div>"
							+ item.category_name
							+ "</div></td>";
					output += "<td class='align-middle'><div>"
							+ item.product_date
							+ "</div></td>";
					output += "<td class='align-middle'><div>"
							+ "<a class='btn btn-info' href='productModifyView?code=" + item.product_code + "'>"
							+ "수정</a></div></td>";
					output += "</tr>";
				});

				output += "</tbody>";
				$('table').append(output);

				$(".pagination").empty();
				output = "";

				digit = "«";
				href = "";
				if (data.page > 1) {
					href = "href=javascript:go(" + (data.page - 1)
							+ ")";
				}
				output += setPaging(href, digit);

				for (var i = data.startpage; i <= data.endpage; i++) {
					digit = i;
					href = "";
					if (i != data.page) {
						href = "href=javascript:go(" + i + ")";
					}
					output += setPaging(href, digit);
				}

				digit = "»";
				href = "";
				if (data.page < data.maxpage) {
					href = "href=javascript:go(" + (data.page + 1)
							+ ")";
				}
				output += setPaging(href, digit);

				$(".pagination").append(output);
				
				$(".productNo").remove();
				$('.selectionDelete').remove();
				output = '<button class="btn btn-danger selectionDelete">선택삭제</button>';
				$(".clearfix").prepend(output);
				
			}else if(data.listcount == 0){
				var message = "<p class='text-center h2 mt-3 mb-3 productNo'><span>등록된 상품이 없습니다.</span></p>";
				$("tbody").remove();
				$(".pagination").empty();
				$('.selectionDelete').remove();
				$('.card-body').append(message);
			}
		}
	});
}

function allcheck(){
	if($("input[name='allCheck']")[0].checked == true){
		$("input[name='allCheck']")[0].checked = false;
	}
}

$(function(){
	var selectedValue=$("#search_field").val();
	
	if(selectedValue!='-1'){
		$("#productSelect").val(selectedValue);
	}
	
	// 검색 버튼 클릭한 경우
	$('#productSearch').click(function(){
		// 검색어 유효성 검사를 한다.
		if($("#search_word").val()==''){
			$('#ProductValidationModal').modal({backdrop: 'static', keyboard: false});
			$('#ProductValidationModal-body').html("<h4>검색어를 입력해주세요</h4>");
			return false;
		}
	});
	
	// 검색창 select가 바뀌면 placholder 바뀐다
	$('#productSelect').change(function(){
		selectedValue = $(this).val();
		$("#search_word").val('');
		message = ["상품이름", "상품코드", "카테고리명"];
		$("#search_word").attr("placeholder", message[selectedValue] + " 입력하세요");
	});
	
	$("#productAddBtn").click(function(){
		$.ajax({
			type : "post",
			url : "categoryList",
			dataType : 'json',
			success : function(data){
				$("#categorySelectModal > option").remove();
				$(data.categoryList).each(function(index, item){
					var option = "<option value='" + item.category_code + "'>"
							   + item.category_name + "</option>";
					$("#categorySelectModal").append(option);
				});
			}
		});
		$("#productAddModal").modal({backdrop: 'static', keyboard: false});
	});
	
	$("#productAddForm").submit(function(){
		if($.trim($("#product_code").val()) == ''){
			$("#ProductValidationModal").modal({backdrop: 'static', keyboard: false});
			$("#ProductValidationModal-body").html("<h5>상품코드를 입력해주세요</h5>");
			return false;
		}
		
		if($.trim($("#product_name").val()) == ''){
			$("#ProductValidationModal").modal({backdrop: 'static', keyboard: false});
			$("#ProductValidationModal-body").html("<h5>상품이름을 입력해주세요</h5>");
			return false;
		}
		
		if($.trim($("#product_detail").val()) == ''){
			$("#ProductValidationModal").modal({backdrop: 'static', keyboard: false});
			$("#ProductValidationModal-body").html("<h5>상세정보를 입력해주세요</h5>");
			return false;
		}
		
		if($.trim($("#product_price").val()) == ''){
			$("#ProductValidationModal").modal({backdrop: 'static', keyboard: false});
			$("#ProductValidationModal-body").html("<h5>상품가격을 입력해주세요</h5>");
			return false;
		}
		
		if($.trim($('#imgUpload').val()) == ''){
			$('#ProductValidationModal').modal({backdrop: 'static', keyboard: false});
			$('#ProductValidationModal-body').html("<h4>이미지를 첨부해주세요</h4>");
			return false;
		}
	});
	
	$("#product_price").keyup(function(){
		if(!($.isNumeric($('#product_price').val()))){
			$("#product_price").val('');
		}
	});
	
	var chkObj = $("input[name='RowCheck']");
	var rowCnt = chkObj.length;
	
	$('input[name="allCheck"]').click(function(){
		var chk_listArr = $('input[name="RowCheck"]');
		for(var i = 0; i < chk_listArr.length; i++){
			chk_listArr[i].checked = this.checked;
		}
	}); // $('input[name="allCheck"]').click()
	
	$(document).on('click', 'input[name="RowCheck"]', function(){
		if($("input[name='RowCheck']").length != rowCnt){
			rowCnt = $("input[name='RowCheck']").length;
		}
		
		if($('input[name="RowCheck"]:checked').length == rowCnt){
			$("input[name='allCheck']")[0].checked = true;
		}else{
			$("input[name='allCheck']")[0].checked = false;
		}
	}); // $(document).on()
	
	$(".clearfix").on("click", ".selectionDelete", function(){
		selectionDelete();
	}); // $(".btn_group").on()
	
	//이미지 첨부 부분
	function show(){
		if($('#imgvalue').text() == ''){
			$(".remove").css('display', 'none');
		} else {
			$(".remove").css('display', 'inline-block');
		}
	}
	
	show();
	
	$('#imgUploadbtn').click(function(e){
		e.preventDefault();
		$('#imgUpload').click();
	});
	
	$('#imgUpload').change(function(){
		var inputimg = $(this).val().split("\\");
		var filename = inputimg[inputimg.length - 1];
		var pattern = /(gif|jpg|jpeg|png)$/i;
		if(pattern.test(filename)){
			$('#imgvalue').text(filename);
			show();
		}else{
			$('#ProductValidationModal').modal({backdrop: 'static', keyboard: false});
			$('#ProductValidationModal-body').html("<h6>확장자는 gif, jpg, jpeg, png가 가능합니다.</h6>");
			return false;
		}
	});
	
	$('.remove').click(function(){
		$("#imgvalue").text('');
		show();
	});
	
	$("#categorySelect").change(function(){
		go(1);
	});
	
	categoryList();
	
});