class CreateCompletions < ActiveRecord::Migration[8.0]
  def change
    create_table :completions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :learningmodule, null: false, foreign_key: true
      t.string :submission_url

      t.timestamps
    end
  end
end
