class AddReplytoComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :reply, :text
  end
end
