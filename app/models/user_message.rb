class UserMessage < ActiveRecord::Base
  attr_accessible :from_user_id, :to_user_id, :message, :subject, :to_user_id
  belongs_to :user

  validates :to_user_id, :numericality => { only_integer: true }
  validates :subject, :presence => {:message => 'Must have a subject'}
  validates :message, :presence => {:message => 'Must have a message'}

end
