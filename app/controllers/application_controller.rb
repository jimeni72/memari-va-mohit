class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #raahe biuk :)
  # before_action :authenticate_user!, :except => [:homepage]
  # before_action :check_profile
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def profile
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me , :role ,:company_name , :work_experience , :register_number , :tel ,:fax ) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me, :role ,:company_name , :work_experience , :register_number , :tel ,:fax) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password , :role ,:company_name , :work_experience , :register_number , :tel ,:fax) }
    end
    
    rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to  root_url
  end

 # def check_profile
 #  puts "current_user: " , current_user
 #  puts "current_user.profile: " , current_user.profile 
 #  if current_user and !current_user.profile and not(params[:controller] == 'profiles' and  params[:action] == 'new' or params[:action] == 'create' )
 #    redirect_to new_profile_path
  
 #  end
 # end

 #inja vase 2 marhaleE shodan e

  #  def after_sign_in_path_for(user)
  #   if not user.profile.nil?

  #     if user.profile.work_experience.nil?

  #       edit_profile_path(user.profile)
  #     else
  #       root_url
  #     end
  #   else
  #     if user.profile.nil?
  #      new_profile_path(user)
  #     else
  #       root_url
  #     end
  #   end
  # end



end
