class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :text
      t.string :corrections
      t.string :converted_text

      t.timestamps null: false
    end
  end
end
