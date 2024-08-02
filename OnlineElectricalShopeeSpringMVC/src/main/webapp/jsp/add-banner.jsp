<div id="addBannerScreen" style="display:none">
	<button class="btn" id="openBtn" onclick="openPopup('addBannerPopUp')">Add Banner +</button>
	            
	<div class="popup" id="addBannerPopUp">
	    <div class="popup-content">
	        <span class="close" onclick="closePopUp('addBannerPopUp')">&times;</span>                    
	        <h2 class="popup-title">Add new banner</h2>
	        <div class="popup-body">
	            <div class="input-field-label">
	                <label>Add Banner : </label>                           
	                <input type="text" id="bannerName" placeholder="Enter banner name">
	            </div>
	            <div class="input-field-label">
	                <label>Status : </label>                           
	                <select  id="baner-status">
	                    <option value="active">Active</option>
	                    <option value="inactive">Inactive</option>	                                
	                </select>
	            </div>
	            <div class="input-field-label">
	                <label for="">Banner Image : </label>
	                <input type="file">
	            </div>
	            <button class="btn btn-g" style="width: 100%;">Add Banner</button>
	        </div>
	    </div>                
	</div>
</div>
