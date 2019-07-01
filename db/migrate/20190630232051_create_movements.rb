class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.decimal :value
      t.text :description
      t.belongs_to :category
    end
  end
end
