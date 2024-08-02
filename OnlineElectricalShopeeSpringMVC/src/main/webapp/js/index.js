document.addEventListener('DOMContentLoaded', function() {
    getCategoryList();
});
function getCategoryList(){
	let url = 'getAllCategories';
	getAJAX(url, "", (resp)=>{
		if(resp != ''){
			let str = '';
			for(let i=0; i<resp.length; i++){
				let obj = resp[i];				
				str+=
				'<tr>'+
                    '<td>'+obj.category+'</td>'+
                '</tr>';	
			}
			document.getElementById('all-catogories-list').innerHTML = str;
		}
	});
}

function getLatestProductList(){
	getAJAX('getLatestProductList', {}, (resp)=>{
		if(resp != ''){
			let str = '';
			for(let i=0; i<resp.length; i++){
				let obj = resp[i];
				str += 
				'<div class="product-div" id="product_'+obj.productId+'">'+
                    '<div class="product-img"></div>'+
                    '<div class="product-content">'+obj.productName+'</div>'+
                '</div>';
			}
			document.getElementById('latest-product-list').value = str;
		}
	})
}