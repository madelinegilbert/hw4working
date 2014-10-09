class SessionsController < ApplicationController

   def new
   end
   
   def create
      if User.exists?(params[:user])
         user = User.where(user_id:params[:user][:user_id]).first
         if user.email == params[:user][:email]
            session[:session_token] = user.session_token
            redirect_to movies_path
         end
      else
         flash[:notice] = "Invalid UserId/Email Combination"
         redirect_to login_path
      end
   end
 
   def destroy
      session[:session_token] = nil
      redirect_to movies_path
   end

end
