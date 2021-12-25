class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  #Facebook Log In
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user
    else
      redirect_to new_user_registration_url
    end
  end

  #Handles failure
  def failure
    redirect_to root_path
  end
end
