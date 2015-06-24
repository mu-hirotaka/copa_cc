class ApplicationController < ActionController::Base
  after_action  :store_location
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ErrorHandlers if Rails.env.production?

  def store_location
    session[:previous_url] = request.fullpath
    if (request.fullpath =~ /^\/select\/show/ )
#      session[:player_name] = params[:name]
#      session[:chara_type] = params[:c_type]
    end
  end
end
