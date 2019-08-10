
class MessageDeliveryJob < ApplicationJob
  queue_as :default

  def perform(message)
    send_notification(message.match.matcher, message) unless message.match.matcher == message.user
    send_notification(message.match.matchee, message) unless message.match.matchee == message.user
  end

  private

  def send_notification(user, message)
    ChatChannel.broadcast_to "chat_channel_#{user.id}", build_message(message)  
  end

  def build_message(msg)
    msg = { 
      message: {
        name: message.user.name,
        timestamp: message.created_at,
        body: message.body        
      }
    }

    msg[:avatar] = polymorphic_url(message.user.default_photo.file) if message.user.default_photo.file.attached?
    msg[:me]         msg.user == current_user
    msg[:color]      msg.user == current_user ? 'green' : 'blue'

    msg
  end
end
