ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => "587",
	:domain => "gmail.com",
	:user_name => "tynguyen06",
	:password => "Hilfiger1",
	:authentication => "plain",
	:enable_starttls_auto => true
}