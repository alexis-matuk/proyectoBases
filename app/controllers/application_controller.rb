class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  

  def redirect_user
    redirect_to '/'
  end

  def record_not_found
    redirect_to '/' # Assuming you have a template named 'record_not_found'
  end

end

#nuevo comentario