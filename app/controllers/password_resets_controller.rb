class PasswordResetsController < ApplicationController
  def new
  end

  def edit
  end
  
  
=begin
  def pass_forgot
    if request.post?
#=begin      
    #This part is for testing only(no real data in database yet)
        @user = User.new(
            emails: 'abc@gmail.com'
        )
          session[:email]= @user.emails
          redirect_to("/user/pass_forgot2")
# =end
=begin
      @user=User.find_by(emails: params[:email])
      if @user
        session[:email]= @user.emails
        redirect_to("/user/pass_forgot2")
      else
        @error_message = "email or number does not exist."
      end
=end
    end
  end
  
  def pass_forgot2
    if request.get? #if request comes from pass_forgot or resend token
      session[:token]=rand.to_s[2..7] #generate a random 6 digit token
      Usermailer.send_random_token(session[:email],session[:token]).deliver_now
    
    else #request comes from submit token
      if params[:token] == session[:token]
        redirect_to("/user/edit_info")
        # トークンが合ってたら、パスワードを設定し直す画面に移動すべき
      else
        @error_message = "wrong token"
      end
    end
  end
=end
end
