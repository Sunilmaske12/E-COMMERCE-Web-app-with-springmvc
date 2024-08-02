function getAJAX(url, payload , callbackFun) {
    $.ajax({
        type: 'GET',
        url: url,
        data: payload,
        dataType: 'json', 
        success: function(result, textStatus, xhr ) {
            if(textStatus == 'success' && xhr.status == 200){
	            callbackFun(result);			
			}else{
				alert('something went wrong!');
			}
        },
        error: function(xhr, status, error) {
			callbackFun('');	
            alert('something went wrong!');
            console.log(status , xhr.status, error);
        }
    });
}

function postAJAX(url, payload, callbackFun){
	$.ajax({
		type : 'POST',
		url : url,
		data : payload,
		success: function(result, textStatus, xhr) {
            if(textStatus == 'success' && xhr.status == 200){
	            callbackFun(result);			
			}else{
				alert('something went wrong!');
			}
        },
        error: function(xhr, status, error) {
            callbackFun('');	
            alert('something went wrong!');
            console.log(status , xhr.status, error);
        }
	})
}
