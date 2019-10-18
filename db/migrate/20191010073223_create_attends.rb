class CreateAttends < ActiveRecord::Migration[5.2]
  def change
    create_table :attends do |t|
      t.date :day
      t.time :start_time
      t.time :finish_time
      t.time :break_start_time
      t.time :break_finish_time
      t.string :status
      t.string :remarks
      t.integer :user_id
      t.timestamps
    end
  end
end
