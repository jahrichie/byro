class UserMessage < ActiveRecord::Base
  attr_accessible :from_user_id, :message, :subject, :to_user_id
end
