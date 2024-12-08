//javascript code for call api
function callApi(method,url,data,responsehandler){
	var options;
	if(method=="GET" || method=="DELETE")
		options={method: method, headers: {'Content-Type' : 'application/json'}};
	else
		options={method: method, headers: {'Content-Type' : 'application/json'}, body : data};
	fetch(url,options)
		.then(response => {
			if(!response.ok)
				throw new Error(response.status + ": " + response.statusText);
				return response.json();
		})
		.then(data => responsehandler(data))
		.catch(error => alert(error));
}


