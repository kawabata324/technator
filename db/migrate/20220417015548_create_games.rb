class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :status
      t.integer :result
      t.timestamps
    end
  end
end
