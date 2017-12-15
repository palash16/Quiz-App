class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.references :subgenre, foreign_key: true
      t.string :op1
      t.string :op2
      t.string :op3
      t.string :op4
      t.string :answer

      t.timestamps
    end
  end
end
