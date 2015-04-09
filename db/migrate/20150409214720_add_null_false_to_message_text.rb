class AddNullFalseToMessageText < ActiveRecord::Migration
  def change
  	change_column :messages, :text, :string, :null => false
  end
end
