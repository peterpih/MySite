class ExampleMailer < ApplicationMailer
	default from: "from@example.com"
	
	def sample_email(user)
		@user = user
		mail(to: @user.email, subject: "sample Email")
	end
end
