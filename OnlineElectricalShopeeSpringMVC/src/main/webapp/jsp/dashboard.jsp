<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href=" <c:url value="css/admin/dashbord.css" />">

</head>
<body>
	<div class="container">
		<section class="header">
			<p>Superadmin - Dashboard</p>
		</section>
		<section class="nav">
			<p onclick="toggleToMainTab(this)" class="pointer"
				id="addCategoryTab">Add Category</p>
			<div class="border-b"></div>
			<p onclick="toggleToMainTab(this)" class="pointer" id="addProductTab">Add
				Product</p>
			<div class="border-b"></div>
			<p onclick="toggleToMainTab(this)" class="pointer" id="addBannerTab">Add
				Banner</p>						
		</section>
		<section class="content">
			<div id="add-product-screen">
				<%@ include file="./add-product.jsp"%>
				<%@ include file="./add-banner.jsp"%>
				<%@ include file="./add-category.jsp"%>

			</div>
		</section>
	</div>

	<script>
		function openPopup(id) {
			document.getElementById(id).style.display = 'block';
		}
		function closePopUp(id) {
			document.getElementById(id).style.display = 'none';
		}
		function closeAddCatPopUp() {
			document.getElementById('category').value = '';
			document.getElementById('addCategoryPopup').style.display = 'none';
		}
		const tabIds = [ 'addCategoryTab', 'addProductTab', 'addBannerTab' ];
		const screenIds = [ 'addCategoryScreen', 'addProductScreen', 'addBannerScreen' ];

		function toggleToMainTab(evt) {
			for (let i = 0; i < tabIds.length; i++) {
				if (evt.id == tabIds[i]) {
					document.getElementById(screenIds[i]).style.display = 'block';
				} else {
					document.getElementById(screenIds[i]).style.display = 'none';
				}
			}
		}

		function getAllProduct() {
			const URL = "http://localhost:8080/OnlineElectricalShopeeSpringMVC/getAllProduct";
			$.ajax({
				type : "GET",
				url : URL,
				dataType : "json",
				success : function(response) {
					populateProducts(response);
				}
			})
		}

		function getAllCategories() {
			const URL = "http://localhost:8080/OnlineElectricalShopeeSpringMVC/getAllCategories";
			$.ajax({
				type : "GET",
				url : URL,
				dataType : "json",
				success : function(response) {
					populateCategories(response);
				}
			})

		}

		function saveCategory() {
			let category = document.getElementById('category').value.trim();
			if (category == '') {
				alert('Enter category');
				return;
			}
			const URL = "http://localhost:8080/OnlineElectricalShopeeSpringMVC/saveCategory";
			postAJAX(URL, {category : category}, populateCategoryList);
		}
		
		function populateCategoryList(resp){
			if(resp != ''){
				closeAddCatPopUp();
				alert(resp.split(' ')[2]);
				populateCategoryListOptions();
			}else{
				alert('something went wrong');
			}
		}
	</script>
	<script type="text/javascript" src="<c:url value="/js/AjaxUtility.js" />" ></script>
	<script type="text/javascript" src="<c:url value="/js/dashbord.js" />" ></script>
	
</body>
</html>