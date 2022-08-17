class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :name_of_items
      t.string  :genre
      t.string  :text
      t.integer :number_of_items
      t.text    :memo
      t.integer  :user_id
      t.timestamps
    end
  end
end