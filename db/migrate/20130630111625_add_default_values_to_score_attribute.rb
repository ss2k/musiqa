class AddDefaultValuesToScoreAttribute < ActiveRecord::Migration
  def change
    change_column :answers, :score, :integer, default: 0
  end
end
