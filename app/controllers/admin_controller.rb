class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "saksham" && params[:password] == "password"
        session[:admin] = "ADMIN"
        redirect_to stores_url
      else
        flash[:notice] = "Invalid Credentials"
        render :action=>:login
      end
    end
  end
  
  def logout
    session.delete(:admin)
    flash[:notice] = "You are logged out"
    redirect_to :action=>:login
  end
end