class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :New_Event_Title
      t.string :Location
      t.string :Date
      t.integer :Starts
      t.integer :Ends
      t.text :Notes

      t.timestamps
    end
  end
end
