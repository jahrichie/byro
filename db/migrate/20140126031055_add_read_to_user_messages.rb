class AddReadToUserMessages < ActiveRecord::Migration
  def change
    add_column :user_messages, :read, :boolean, default: false
  end
end
