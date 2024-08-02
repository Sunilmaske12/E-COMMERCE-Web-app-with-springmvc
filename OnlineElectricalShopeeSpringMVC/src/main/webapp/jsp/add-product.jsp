<div style="display:none" id="addProductScreen" >
	<input type="hidden" value ="0" id="hiddenProductId">
	<button class="btn" onclick="openPopup('addProductPopUp')">Add Product +</button>
	            
	<div class="popup" id="addProductPopUp">
	    <div class="popup-content">
	        <span class="close" onclick="closeProductPopUp()" >&times;</span>                    
	        <h2 class="popup-title">Add new product</h2>
	        <div class="popup-body">
	            <div class="input-field-label">
	                <label>Product Name : </label>                           
	                <input type="text" id="productName" placeholder="Enter product name">
	            </div>
	            <div class="input-field-label">
	                <label>Product Category : </label>                           
	                <select name="" id="productCategory">		                	                 
	                </select>
	            </div>
	            <div class="input-field-label">
	                <label>Product Price : </label>                           
	                <input type="number" id="productPrice" placeholder="Enter product price">
	            </div>
	            <div class="input-field-label">
	                <label for="">Product Image : </label>
	                <input type="file">
	            </div>
	            <button onclick="saveOrUpdateProduct()" class="btn btn-g" style="width: 100%;">Add Product</button>
	        </div>
	    </div>                
	</div>
</div>