class AddActorsToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :actors, :text
  end
end
