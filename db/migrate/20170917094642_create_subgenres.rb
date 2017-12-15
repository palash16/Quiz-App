class CreateSubgenres < ActiveRecord::Migration[5.1]
  def change
    create_table :subgenres do |t|
      t.string :title
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
