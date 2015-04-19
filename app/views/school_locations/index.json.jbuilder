json.array!(@school_locations) do |school_location|
  json.extract! school_location, :id, :school_loc_id, :addr1, :addr2, :addr3, :city, :state_id, :country_id, :postal_code, :ph_no, :fax_no, :email_id, :land_mark1, :land_mark2, :desc, :statu_id, :create_date, :created_by, :last_update, :last_updated_by
  json.url school_location_url(school_location, format: :json)
end
