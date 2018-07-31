class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
