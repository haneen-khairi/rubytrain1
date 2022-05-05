class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :username
      t.string :email
      t.integer :phonenumber
      t.text :description

      t.timestamps
    end
  end
end
