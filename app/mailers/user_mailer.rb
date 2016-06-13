class UserMailer < ApplicationMailer
	default :from => "tynguyen06@gmail.com"
	def contact_message(message)
		puts "in contact message"
		mail(:to => "tynguyen06@gmail.com", :subject => "New Message from #{message[:subject]}", :body => message[:from] + "\n\n" + message[:body])
	end
end
