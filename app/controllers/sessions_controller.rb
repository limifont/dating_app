class SessionsController < ApplicationController
  def new
  end

  def create
    @person = Person.find_by_username(params[:session][:username])
    if @person && @person.authenticate(params[:session][:password])
      session[:person_id] = @person.id
      redirect_to person_path(@person)
    else
      flash.now[:danger] = 'Invalid email/password combination'  
      render :new
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to login_path 
  end
end
