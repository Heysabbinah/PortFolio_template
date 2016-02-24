class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception

  ### Change my location to ensure proper function
  ### This call back can take place in any controller 
  ###  and also being customized ,to force auth in only
  ###  certain pages....
  ### For more info please read :
  ### _Devise github    : github.com/plataformatec/devise
  ### _Devise blog/news : blog.plataformatec.com.br/tag/devise
  before_action :authenticate_user! 

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :username
   devise_parameter_sanitizer.for(:sign_up) << :email
   # ici pr que l'avatar se met au moment du sign-up
   devise_parameter_sanitizer.for(:account_update) << :username
   devise_parameter_sanitizer.for(:account_update) << :email
   devise_parameter_sanitizer.for(:account_update) << :avatar
 end
end
