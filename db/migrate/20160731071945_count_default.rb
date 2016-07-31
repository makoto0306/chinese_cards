class CountDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :cards, :correct_count, :integer, null:false, default:0
    change_column :cards, :incorrect_count, :integer, null:false, default:0
  end
end
