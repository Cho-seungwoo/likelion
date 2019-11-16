class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :user_name
      t.references :identity, foreign_key: true

      t.timestamps
    end
  end
end
