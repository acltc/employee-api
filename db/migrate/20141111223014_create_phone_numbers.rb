class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :number
      t.string :phone_type
      t.integer :employee_id

      t.timestamps
    end
  end
end
