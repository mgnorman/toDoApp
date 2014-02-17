json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :New_Event_Title, :Location, :Date, :Starts, :Ends, :Notes
  json.url calendar_url(calendar, format: :json)
end
