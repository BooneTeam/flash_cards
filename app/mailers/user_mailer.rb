class UserMailer < ActionMailer::Base
  default from: "Booneteam@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://flashcardstest.herokuapp.com"
  	mail(:to => user.email, :subject => "Welcome")
  end
end
