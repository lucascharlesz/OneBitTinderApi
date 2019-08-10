class Api::V1::ChatController < ApplicationController
  before_action :set_resource

  def index
    page = params[:page] || 1
    @matches = current_user.matches.left_joins(:messages)
                                   .group(:id).having("COUNT(messages.*) > 0").order("created_at DESC")

    render "api/v1/messages/index"
  end

  def create
    @message = @match.messages.create(body: message_params[:body])

    render "api/v1/messages/show"
  end

  private

  def set_resource
    @match = current_user.matches.find(match_id: message_params.match_id)
  end

  def message_params
    params.require(:message).permit(:match_id, :body)
  end
end
