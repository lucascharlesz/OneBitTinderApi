class MatchNotificationChannel < ApplicationCable::Channel
  def subscribed
    user = User.find_by(authentication_token: params[:token])
    stream_for "chat_#{user.id}"
  end
end