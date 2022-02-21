class SessionController < ApplicationController
  skip_before_action :require_login, only: [:login, :create]
  def login; end

  def create
    user = User.find_by username: params[:username]

    if user&.authenticate(params[:password])
      p 'LOGIN'
      sign_in user
      redirect_to posts_url
    else
      p 'REDIRECT'
      redirect_to session_login_url
    end
  end

  def logout
    sign_out
    redirect_to session_login_url
  end
end
