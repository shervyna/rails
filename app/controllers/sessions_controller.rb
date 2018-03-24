class SessionsController < ApplicationController
  def new
  end
  
  def create_student
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in (user,false)
      flash[:notice] = "Login succeeded"
      redirect_to('/main/index')
    else
      # Create an error message.
      redirect_to root_url,:notice => "Invalid login. Try again" 
    end
  end
  
  def create_teacher
    user = Teacher.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in (user,true)
      flash[:notice] = "Login succeeded"
      redirect_to('/main/index')
    else
      # Create an error message.
      redirect_to root_url,:notice => "Invalid login. Try again" 
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  
  
  
  
=begin
  def login
    @user = User.find_by(emails: params[:emails] ,password: params[:password])
    if @user 
      flash[:notice] = "ログインしました"
      session[:user_id]= @user.id
      redirect_to("/main/index/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @emails = params[:emails]
      @password = params[:password]
      render("users/top")
    end
  end
    
    def logout
        session[:user_id] = nil
    end
=end
end