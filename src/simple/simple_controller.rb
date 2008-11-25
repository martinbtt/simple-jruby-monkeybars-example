class SimpleController < ApplicationController
  set_model 'SimpleModel'
  set_view 'SimpleView'
  set_close_action :exit
  
  def submit_button_action_performed
     params, view_transfer = view_state
     model.message = params.name
     update_view 
  end
  
end
