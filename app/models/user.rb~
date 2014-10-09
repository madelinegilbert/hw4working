class User < ActiveRecord::Base
   attr_accessible :user_id, :email, :session_token

   def self.create_user!(params)
      if (params[:user_id] && params[:email])
         session_token = SecureRandom.base64
         params[:session_token] = session_token
         create(params)
      end
   end
end
