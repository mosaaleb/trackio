class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.belongs_to :user, null:false, foreign_key: true

      t.timestamps null: false
    end
    
    add_index :steps, [:user_id, :name]
  end
end
