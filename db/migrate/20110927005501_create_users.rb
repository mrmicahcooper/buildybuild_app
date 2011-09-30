class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :unique => true
      t.string :email, :unique => true
      t.boolean :is_admin
      t.string :crypted_password
      t.string :salt
      t.string :activation_state
      t.string :activation_token

      t.timestamps
    end
  end
end
