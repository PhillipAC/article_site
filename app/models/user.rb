class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 devise :omniauthable, :omniauth_providers => [:google_oauth2]
         
  has_and_belongs_to_many :oauth_credentials
  has_many :articles
  has_many :comments

  def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(:email => data["email"]).first
  
      # Uncomment the section below if you want users to be created if they don't exist
       unless user
           user = User.create(name: data["name"],
              email: data["email"],
              password: Devise.friendly_token[0,20]
           )
       end
      user
  end
  
end