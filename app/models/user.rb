class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,  :handle
  # attr_accessible :title, :body

  has_many :user_messages, 
    :foreign_key => :to_user_id


  # scope :sent_messages, :conditions => { :highlight => true } #, :include => [:item]


end
