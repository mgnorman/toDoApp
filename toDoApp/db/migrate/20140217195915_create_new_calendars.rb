class CreateNewCalendars < ActiveRecord::Migration
  def change
    create_table :new_calendars do |t|
      t.string :New_Event_Title
      t.string :Location
      t.integer :Starts
      t.integer :Ends
      t.text :Notes

      t.timestamps
    end
  end
end
