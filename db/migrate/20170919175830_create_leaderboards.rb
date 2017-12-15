class CreateLeaderboards < ActiveRecord::Migration[5.1]
  def change
    create_table :leaderboards do |t|
      t.references :Subgenre, foreign_key: true
      t.references :User, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
