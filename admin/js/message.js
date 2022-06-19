$(document).ready(function(){

	getMessage();
	getMessagesend();

	function getMessage(){
		$.ajax({
			url : '../admin/classes/Message.php',
			method : 'POST',
			data : {GET_MESSAGE:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var messageHTML = "";

					$.each(resp.message, function(index, value){

						messageHTML += '<tr>'+
									          '<td>#</td>'+
									          '<td>'+value.name+'</td>'+
									          '<td>'+value.email+'</td>'+
									          '<td>'+value.mobile+'</td>'+
									          '<td>'+value.message+'</td>'+
									       '</tr>'

					});

					$("#customer_list").html(messageHTML);

				}else if(resp.status == 303){

				}

			}
		})
		
	}

	function getMessagesend(){
		$.ajax({
			url : '../admin/classes/Customers.php',
			method : 'POST',
			data : {GET_CUSTOMER_ORDERS:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var customerOrderHTML = "";

					$.each(resp.message, function(index, value){

						customerOrderHTML +='<tr>'+
								              '<td>#</th>'+
								              '<td>'+ value.order_id +'</td>'+
								              '<td>'+ value.product_id +'</td>'+
								              '<td>'+ value.product_title +'</td>'+
								              '<td>'+ value.qty +'</td>'+
								              '<td>'+ value.trx_id +'</td>'+
								              '<td>'+ value.p_status +'</td>'+
								            '</tr>';

					});

					$("#customer_order_list").html(customerOrderHTML);

				}else if(resp.status == 303){
					$("#customer_order_list").html(resp.message);
				}

			}
		})
		
	}


});