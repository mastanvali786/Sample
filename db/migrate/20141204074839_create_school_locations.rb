class CreateSchoolLocations < ActiveRecord::Migration
  def change
    create_table :school_locations do |t|
      t.integer :school_loc_id
      t.string :addr1
      t.string :addr2
      t.string :addr3
      t.string :city
      t.integer :state_id
      t.integer :country_id
      t.string :postal_code
      t.string :ph_no
      t.string :fax_no
      t.string :email_id
      t.string :land_mark1
      t.string :land_mark2
      t.string :desc
      t.integer :statu_id
      t.date :create_date
      t.integer :created_by
      t.date :last_update
      t.integer :last_updated_by

      t.timestamps
    end
  end
end
