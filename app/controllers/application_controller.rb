class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  check_authorization :unless => :devise_controller?
  before_filter :get_categories
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to unauthorized_url, :alert => exception.message
  end
  
  def get_categories
    @featured_categories = Category.first(5)
  end
end
