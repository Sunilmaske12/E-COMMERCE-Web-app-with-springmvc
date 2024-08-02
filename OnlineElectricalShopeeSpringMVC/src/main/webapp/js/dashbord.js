document.addEventListener('DOMContentLoaded', function() {
    populateCategoryListOptions();
});

function populateCategoryListOptions(){
	getAJAX('getAllCategories', {}, (resp)=>{
		if(resp != ''){
			let str = '<option value="0">Select Category</option>';
			for(let i=0; i<resp.length; i++){				
				let obj = resp[i];
				str +=
				'<option value="'+obj.categoryId+'">'+obj.category+'</option>';
			}
			document.getElementById('productCategory').innerHTML = str;	
		}
	})
}

function saveOrUpdateProduct(){
	let productId = document.getElementById('hiddenProductId').value;
	let productName = document.getElementById('productName').value;
	let productCategoryId = document.getElementById('productCategory').value;
	let productPrice = document.getElementById('productPrice').value;
	if(productName.trim() == ''){
		alert('please enter product name');
		return;
	}
	if(productCategoryId.trim() == '' || productCategoryId == 0){
		alert('please select product category');
		return;
	}
	if(productPrice == '' || productPrice == 0){
		alert('please enter product price');
		return;
	}
	const payload = {
		productId : productId,
		productName : productName,
		productCategoryId : productCategoryId,
		productPrice : productPrice
	}
	postAJAX('saveUpdateProduct', payload, (resp)=>{
		if(resp != ''){
			closeProductPopUp('addProductPopUp');
			alert('Product added successfully');
		}else{
			alert('Error while saving product');
		}
	})
}


function closeProductPopUp(){
	document.getElementById('addProductPopUp').style.display = 'none';
	document.getElementById('hiddenProductId').value = 0;
	document.getElementById('productCategory').value = 0;
	document.getElementById('productPrice').value = '';
	document.getElementById('productName').value = '';
}