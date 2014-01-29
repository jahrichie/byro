module ApplicationHelper

  def read_or_unread(status)
    status == false ? "Unread" : "Read"
  end

  def handle_lookup(id)
    User.find(id).handle
  end

  def unread_count(user_id)
    UserMessage.unread_messages(user_id).size
  end

end
