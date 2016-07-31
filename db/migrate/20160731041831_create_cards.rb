class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :chinese
      t.string :japanese
      t.string :pinyin
      t.integer :correct_count
      t.integer :incorrect_count

      t.timestamps
    end
  end
end
