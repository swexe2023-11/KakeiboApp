class CreateLogins < ActiveRecord::Migration[7.0]
  def change
    create_table :logins do |t|
      t.string :uid
      t.string :pass

      t.timestamps
    end
  end
end
