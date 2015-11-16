json.array!(@open_houses) do |open_house|
  json.extract! open_house, :id, :Name, :Phone_number, :Email_address, :How_did_you_here_about_our_open_house, :Are_you_working_with_a_Realtor, :Realtors_name_and_contact_information, :Would_you_like_to_be_emailed_new_properties
  json.url open_house_url(open_house, format: :json)
end
