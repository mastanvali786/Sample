class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :school_id
      t.string :school_name
      t.integer :school_number
      t.string :web_url
      t.string :logo_file_name
      t.string :pic_file_name
      t.string :desc
      t.integer :status_id
      t.integer :school_stat_id
      t.integer :demo_flag_id
      t.integer :discount
      t.integer :discount_amt
      t.integer :start_month
      t.integer :end_month
      t.date :creation_date
      t.integer :created_by
      t.date :last_update
      t.integer :last_updated_by

      t.timestamps
    end
  end
end
