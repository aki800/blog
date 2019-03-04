class RemoveTextFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :text, :text
  end
end
