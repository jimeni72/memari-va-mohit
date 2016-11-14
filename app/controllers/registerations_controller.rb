class RegistrationsController < Devise::RegistrationsController

  # before_save :create_profile

  def create
    super
  end

 private
  def create_profile(user)
   	 if user.profile.present?
  		profile_path(user)
  	 else
  	    new_profile_path(user)
  	 end
   end

end
