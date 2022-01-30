class CreateWaifus < ActiveRecord::Migration[7.0]
  def change
    create_table :waifus do |t|
      t.string :name
      t.integer :age
      t.string :anime
      t.string :description
      t.boolean :main

      t.timestamps
    end
  end
end
