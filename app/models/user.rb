class User < ActiveRecord::Base
after_save :send_email

  def send_email
    UserMailer.welcome_email(self.email).deliver
  end
end
