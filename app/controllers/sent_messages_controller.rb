class SentMessagesController < ApplicationController
  def index
    @sent_messages = UserMessage.where(from_user_id: current_user.id)

  end
end
