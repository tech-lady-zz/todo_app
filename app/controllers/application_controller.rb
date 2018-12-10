class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private
  def authenticate_user
    @current_user = User.find(session[:user_id]) unless session[:user_id].nil?
  end

  def hello
    render html: "Hello Yemi"
  end

  def goodbye
    render html: "Goodbye negatives!"
  end
end
