class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :location
      t.string :user_id

      t.timestamps null: false
    end
  end
end
