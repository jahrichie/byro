module ApplicationHelper

  def read_or_unread(status)
    status == false ? "Unread" : "Read"
  end

  def handle_lookup(id)
    User.find(id).handle
  end

  def unread_count(user_id)
    UserMessage.find_all_by_to_user_id(user_id).reject{|r| r.read == true}.size.to_s
  end

end
