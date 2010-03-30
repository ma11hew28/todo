class UsersController < ApplicationController
  def signup
    if request.get?
      @user = User.new
    elsif request.post?
      @user = User.new(params[:user])
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Thank you for signing up! You are now logged in."
        redirect_to root_url
      else
        render :action => 'signup'
      end
    end
  end

  def login
    if request.post?
      if user = User.find_by_email(params[:email])
        session[:user_id] = user.id
        if params[:remember_me]
          cookies[:remember_me] = {
            :value => user.email,
            :expires => 20.years.from_now
          }
        end
        uri = session[:goto_uri]
        session[:goto_uri] = nil
        flash[:notice] = "Logged in successfully."
        redirect_to uri || root_url
      else
        flash.now[:notice] = "Invalid email. That email is not in our system."
      end
    end
  end

  def logout
    session[:user_id] = nil
    cookies.delete :remember_me
    flash[:notice] = "Logged out successfully."
    redirect_to :login
  end
end
