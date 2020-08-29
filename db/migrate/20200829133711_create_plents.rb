class CreatePlents < ActiveRecord::Migration[6.0]
  def change
    create_table :plents do |t|
      t.string :name
      t.integer :age
      t.references :owner
      t.timestamps
    end
  end
end
