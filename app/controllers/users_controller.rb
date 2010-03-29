class UsersController < ApplicationController
  def signup
    if request.get?
      @user = User.new
    elsif request.post?
      @user = User.new(params[:user])
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Thank you for signing up! You are now logged in."
        redirect_to :home
      else
        render :action => 'signup'
      end
    end
  end

  def login
    if request.post?
      if user = User.find_by_email(params[:email])
        session[:user_id] = user.id
        uri = session[:goto_uri]
        session[:goto_uri] = nil
        flash[:notice] = "Logged in successfully."
        redirect_to uri || :home
      else
        flash.now[:notice] = "Invalid email. The email you entered does not belong to any account."
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out successfully."
    redirect_to :login
  end
end
