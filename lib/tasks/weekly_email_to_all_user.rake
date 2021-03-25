require 'rake'
namespace :weekly_email_to_all_user do
  desc 'Weekly email to all Users'
  task :send_mail => :environment do
    # call Listing method to send mail
    @user = User.all
    @user.each do |u|
    	last_week_room_message = RoomMessage.where("created_at >= ?", Date.today.at_beginning_of_week - 7).count
    	room_message_after_last_message = RoomMessage.where("id > ?", User.last.room_messages.last.id).count
    	MessageMailer.weekly_chat(u, last_week_room_message, room_message_after_last_message).deliver!
    end
  end
end