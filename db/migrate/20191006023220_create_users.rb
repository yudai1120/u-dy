class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :company_id
      t.string  :password_digest
      t.integer :attend_mode_id
      
      t.timestamps
    end
  end
end
