class AddMovieIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :movie_id, :integer
  end
end
