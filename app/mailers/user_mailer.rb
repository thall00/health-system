class UserMailer < ApplicationMailer
  default from: "timhall3000@gmail.com"

  def welcome_email(user)
    @user = user
    puts "@user = #{@user}"
    @url = 'http://www.google.com'
    puts "@url = #{@url}"
    puts "@user.email = #{@user.email}"
    mail(to: @user.email, subject: 'test welcome email')
  end
end
