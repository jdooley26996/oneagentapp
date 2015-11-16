class CreateOpenHouses < ActiveRecord::Migration
  def change
    create_table :open_houses do |t|
      t.string :Name
      t.string :Phone_number
      t.string :Email_address
      t.string :How_did_you_here_about_our_open_house
      t.boolean :Are_you_working_with_a_Realtor
      t.string :Realtors_name_and_contact_information
      t.string :Would_you_like_to_be_emailed_new_properties

      t.timestamps null: false
    end
  end
end
