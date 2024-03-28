class AddMovieToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :movie, null: false, foreign_key: true
  end
end
