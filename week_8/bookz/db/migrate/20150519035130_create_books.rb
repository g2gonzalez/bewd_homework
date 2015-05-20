class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
