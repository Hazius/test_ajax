
$(document).ready(function() 
{
	$("#summ_send").click(function(){	
		send_to_server_to_json("summ", "+");
	});

	$("#difference_send").click(function(){	
		send_to_server_to_json("difference", "-");	
	});

	function send_to_server_to_json(p_doing, p_sign){
		$.post("/send_to_server_to_json", 
				{
					v_doing: p_doing,
					v_number_field_1: $("#number_field_1").val(),
				  	v_number_field_2: $("#number_field_2").val()	
				},
				function(data)
				{
					$("#div_right_bottom").html(data.number_field_1 + " " + p_sign + " " + data.number_field_2 + " = " + data.result);
				}, "json");
	}

});
