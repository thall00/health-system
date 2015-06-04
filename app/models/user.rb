class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_admin_mail
  def send_admin_mail
    puts "*************IN SEND_ADMIN_MAIL**************"
    UserMailer.welcome_email(self).deliver
  end
end
