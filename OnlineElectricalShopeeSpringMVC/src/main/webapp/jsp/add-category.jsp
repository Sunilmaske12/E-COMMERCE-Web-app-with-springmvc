<div id="addCategoryScreen">
	<button class="btn" onclick="openPopup('addCategoryPopup')">Add Category +</button>
	            
	<div class="popup" id="addCategoryPopup" >
	    <div class="popup-content">
	        <span class="close" onclick="closeAddCatPopUp()">&times;</span>                    
	        <h2 class="popup-title">Add new category</h2>
	        <div class="popup-body">
	            <div class="input-field-label">
	                <label>Category Name : </label>                           
	                <input type="text" id="category" placeholder="Enter category name">
	            </div>	                        
	            <button onclick="saveCategory()" class="btn btn-g" style="width: 100%;">Add Category</button>
	        </div>
	    </div>                
	</div>
</div>	