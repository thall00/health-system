class UserMailer < ApplicationMailer
  default from: "timhall3000@gmail.com"

  def welcome_email(user)
    @user = user
    puts "@user = #{@user}"
    @url = 'http://localhost:3000/'
    puts "@url = #{@url}"
    puts "@user.email = #{@user.email}"
    mail(to: @user.email, subject: 'Welcome!')
  end
end
