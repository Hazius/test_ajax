class WelcomeController < ApplicationController

  def index

  end

  def send_to_server_to_json
  	iv_number_field_1 = params[:v_number_field_1]
  	iv_number_field_2 = params[:v_number_field_2] 
    iv_doing =  params[:v_doing]	

    case iv_doing
      when "summ"
        lv_result = iv_number_field_1.to_f + iv_number_field_2.to_f        
      when "difference"
        lv_result = iv_number_field_1.to_f - iv_number_field_2.to_f  
    end	 

  	result = { 
  				number_field_1: iv_number_field_1,
  				number_field_2: iv_number_field_2,
  				result: lv_result
  			  }

  	render text: result.to_json

  end

end
