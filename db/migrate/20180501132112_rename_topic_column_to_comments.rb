class RenameTopicColumnToComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :topic, :body
  end
end
