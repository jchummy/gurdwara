class UserMailer < ApplicationMailer
	default from: "sgrs.bayarea@gmail.com"

	def welcome_email(user)
		@user = user
    # CJ: I don't think you need this @url for anything
		@url = 'http://www.google.com'
		mail(to: @user.email, subject: 'Welcome to Shri Guru Ravidass Saba, Bay Area!')
	end
end