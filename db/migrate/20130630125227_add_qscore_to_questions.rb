class AddQscoreToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :qscore, :integer, default: 0
  end
end
