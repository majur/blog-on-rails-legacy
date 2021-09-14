class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to user
    else
      # Create an error message.
      render 'error'
    end
  end

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def log_out
    reset_session
    @current_user = nil
  end

end