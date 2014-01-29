class UserMessage < ActiveRecord::Base
  attr_accessible :from_user_id, :to_user_id, :message, :subject, :to_user_id
  belongs_to :user

  validates :to_user_id, :numericality => { only_integer: true }
  validates :subject, :presence => {:message => 'Must have a subject'}
  validates :message, :presence => {:message => 'Must have a message'}


  scope :sent_messages, lambda { |current_user|
    where("user_messages.from_user_id = ?", current_user)
  } 

  scope :unread_messages, lambda { |current_user|
    #.reject{|r| r.read == true}.size.to_s
    where("user_messages.to_user_id = ? and user_messages.read = ?", current_user, false)
  } 


  def self.all_messages
    self.all
  end
 

end
