class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content,  null: false
      t.integer :user_id, foreign_key: true,  null: false
      t.integer :problem_id, foreign_key: true,  null: false

      t.timestamps
    end
  end
end
