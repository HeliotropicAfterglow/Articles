module ApplicationHelper

  def is_active_nav_item(action)       
    params[:action] == action ? "active" : nil        
  end
end
