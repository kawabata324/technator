class CreateProgresses < ActiveRecord::Migration[6.1]
  def change
    create_table :progresses do |t|
      t.references :game, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :answer
      t.integer :sequence
      t.timestamps
    end
  end
end
