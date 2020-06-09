class RenameUerIdColumnToPostComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :post_comments, :uer_id, :user_id
  end
end
