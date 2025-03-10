class CreateLearningmodules < ActiveRecord::Migration[8.0]
  def change
    create_table :learningmodules do |t|
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end
    add_index :learningmodules, :position
  end
end
