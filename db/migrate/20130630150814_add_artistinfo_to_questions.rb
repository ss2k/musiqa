class AddArtistinfoToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :artist, :string
    add_column :questions, :song, :string
    add_column :questions, :similar, :boolean
    add_column :questions, :learn, :boolean
  end
end
