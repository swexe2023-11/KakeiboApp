class CreateRecipts < ActiveRecord::Migration[7.0]
  def change
    create_table :recipts do |t|
      t.string :uid
      t.date :day
      t.integer :pay
      t.string :kind
      t.string :img

      t.timestamps
    end
  end
end
