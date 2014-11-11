class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :email
      t.string :ssn
      t.integer :manager_id

      t.timestamps
    end
  end
end
