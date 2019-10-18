class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :password_digest
      t.integer :phone_number
      t.integer :employee_number
      t.timestamps
    end
  end
end
