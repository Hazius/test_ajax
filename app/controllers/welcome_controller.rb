class WelcomeController < ApplicationController

  def index

  end

  def send_to_server_to_json
  	iv_number_field_1 = params[:v_number_field_1].to_f
  	iv_number_field_2 = params[:v_number_field_2].to_f  	
  	iv_number_field_summ = iv_number_field_1 + iv_number_field_2
  	iv_number_field_difference = iv_number_field_1 - iv_number_field_2
  	iv_number_field_dividу = iv_number_field_1 / iv_number_field_2
  	iv_number_field_multiply = iv_number_field_1 * iv_number_field_2

  	result = { 
  				number_field_1: iv_number_field_1,
  				number_field_2: iv_number_field_2,
  				number_field_summ: iv_number_field_summ,
  				number_field_difference: iv_number_field_difference,
  				number_field_dividу: iv_number_field_dividу,
  				number_field_multiply: iv_number_field_multiply
  			  }

  	#render text: "как бы работает...".to_json
  	render text: result.to_json

  	#render xml: @result
	#render json: @result

  end

end
