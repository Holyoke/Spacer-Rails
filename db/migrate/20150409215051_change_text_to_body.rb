class ChangeTextToBody < ActiveRecord::Migration
  def change
  	rename_column :messages, :text, :body
  end
end
