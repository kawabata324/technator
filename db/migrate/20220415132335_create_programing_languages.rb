class CreateProgramingLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :programing_languages do |t|

      t.string :name, null: false
      t.string :image_color
      t.integer :created_year
      t.integer :lang_type
      t.string :framework
      t.timestamps
    end
  end
end
