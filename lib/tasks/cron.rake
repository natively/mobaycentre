desc 'this task populates our event table from eb-xml streams'

task :cron => :environment do
  require 'nokogiri'
  require 'open-uri'

  # make this the url of your EventListXML stream
  url = "http://go.smgbooking.com/EventListXml.ashx?wl=D.3EB50052" 
  #=> "http://go-xml.smgbooking.com/EventListXml.ashx?wl=3.7FEDB662"
  
  Nokogiri::XML(open(url)).xpath("//event").each do |e|
    puts "Creating " + (e>"event_name").text + "..."

    # get the date (for readability)
    date_range = e>"date_range"
    start_date = DateTime.parse( (date_range>"start_date").text + 
                                 (date_range>"start_time").text )
    end_date = DateTime.parse( (date_range>"end_date").text +
                               (date_range>"end_time").text )


    Event.new(
      :title => (e>"event_name").text,
      :description => (e>"description").text,
      :venue_name => (e>"venue_name").text,
      :start_at => start_date,
      :end_at => end_date ) do |new_e|
        new_e.id = (e>"unique_event_id").text.to_i
        new_e.save
      end
  end

  # now update the list with featured events
  fe_url = "http://go.smgbooking.com/EventListXml.ashx?wl=D.3EB50052&feMode=2"
  # => http://go-xml.smgbooking.com/EventListXml.ashx?wl=3.7FEDB662&feMode=2"
  Nokogiri::XML(open(fe_url)).xpath("//event").each do |fe|
    puts "Setting " + (fe>"event_name").text + " as FEATURED"
    Event.find((fe>"unique_event_id").text.to_i).update_attributes(:featured => true)
  end
end