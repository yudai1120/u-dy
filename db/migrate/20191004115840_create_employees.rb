class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :company_id
      t.integer :attend_mode_id
      t.string :password_digest

      t.timestamps
    end
  end
end
