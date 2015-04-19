class CreateSchoolContacts < ActiveRecord::Migration
  def change
    create_table :school_contacts do |t|

      t.timestamps
    end
  end
end
