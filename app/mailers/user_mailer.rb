class UserMailer < ApplicationMailer
	default from: "sgrs.bayarea@gmail.com"

	def welcome_email(user)
		@user = user
		@url = 'http://www.google.com'
		mail(to: @user.email, subject: 'Welcome to Shri Guru Ravidass Saba, Bay Area!')
	end
end