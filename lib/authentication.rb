module Authentication
  def self.included(controller)
    controller.send :helper_method, :current_user, :logged_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user
  end

  def login_required
    unless logged_in?
      flash[:error] = 'You must first log in or <a href="/signup">sign up</a> before accessing that page.'
      session[:goto_uri] = request.request_uri
      redirect_to :login
    end
  end

  def logout_required
    if logged_in?
      flash[:notice] = 'You must first <a href="/logout">log out</a> before accessing that page.'
      redirect_to :home
    end
  end
end
