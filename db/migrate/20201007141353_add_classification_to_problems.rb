class AddClassificationToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :classification, :string
  end
end
