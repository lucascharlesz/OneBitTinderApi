json.id         @message.id
json.name       @message.user.name
json.timestamp  @message.created_at
json.body       @message.body
json.avatar     polymorphic_url(@message.user.default_photo.file) if @message.user.default_photo.file.attached?
json.me         @message.user == current_user
json.color      @message.user == current_user ? 'green' : 'blue'
