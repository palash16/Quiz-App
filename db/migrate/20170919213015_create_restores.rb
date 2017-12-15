class CreateRestores < ActiveRecord::Migration[5.1]
  def change
    create_table :restores do |t|
      t.integer :user_id
      t.integer :last_ques
      t.integer :subgenre_id
      t.integer :score
      t.integer :highest_score

      t.timestamps
    end
  end
end
