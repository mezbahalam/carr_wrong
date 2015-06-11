class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :attachment

      t.timestamps null: false
    end
  end
end
