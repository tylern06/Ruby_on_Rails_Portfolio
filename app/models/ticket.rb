class Ticket < ActiveRecord::Base
	def self.receive_mail(message)
		puts "20 times *"
		# puts message.subject
		# puts message[:email][:subject]
		ticket_id = message[:subject][/^Update (\d+)$/,1]
		if ticket_id.present? && Ticket.exists(ticket_id)
			Ticket.update(ticket_id, body: message.body.decoded)
		else
			Ticket.create subject: message[:subject], body: message[:body], from: message[:from]
			puts "ticket created"
		end
	end
end
