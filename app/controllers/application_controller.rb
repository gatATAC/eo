class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :action_set_url_options

  def action_set_url_options
    if ENV['RAILS_RELATIVE_URL_ROOT']
      @host = request.host+":"+request.port.to_s+"/"+ENV['RAILS_RELATIVE_URL_ROOT']
    else
      @host = request.host+":"+request.port.to_s
    end
    Rails.application.routes.default_url_options = { :host => @host}
  end  
end
