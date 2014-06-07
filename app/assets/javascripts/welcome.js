$(document).ready(function() 
{
	$("#submit_send").click(
	function()
	{			

		$.post("/send_to_server_to_json", 
				{ v_number_field_1: $("#number_field_1").val(),
				  v_number_field_2: $("#number_field_2").val()				  
				},
				function(data)
				{   
    				$("#div_right_bottom").html(data.number_field_1 + " + " + data.number_field_2 + " = " + data.number_field_summ + "<br>" +
    											data.number_field_1 + " - " + data.number_field_2 + " = " + data.number_field_difference + "<br>" +
    											data.number_field_1 + " / " + data.number_field_2 + " = " + data.iv_number_field_dividу + "<br>" +
    											data.number_field_1 + " * " + data.number_field_2 + " = " + data.iv_number_field_multiply + "<br>"
    										   )
  				}, "json");	
		
	});
});
