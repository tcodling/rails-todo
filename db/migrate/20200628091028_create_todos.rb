class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :done, default: false
      t.string :notes
      t.timestamps
    end
  end
end
