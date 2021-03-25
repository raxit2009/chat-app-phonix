class MessageMailer < ApplicationMailer
	default from: "raxit2009@gmail.com"
	def weekly_chat(user, last_week_room_message, room_message_after_last_message)
		@user = user
		@last_week_room_message = last_week_room_message
		@room_message_after_last_message = room_message_after_last_message
		mail(to: @user.email, subject: 'Weekly Update')
	end
end
