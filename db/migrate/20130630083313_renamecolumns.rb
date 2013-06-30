class Renamecolumns < ActiveRecord::Migration
  def up
    rename_column :questions, :question, :description
    rename_column :questions, :title, :question
  end

  def down
  end
end
