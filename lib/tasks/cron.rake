desc 'this task populates our event table from eb-xml streams'

task :cron => :environment do
  require 'nokogiri'
  require 'Date'
  require 'open-uri'

  # make this the url of your EventListXML stream
  url = "http://go-xml.smgbooking.com/EventListXml.ashx?wl=3.7FEDB662"
  
  Nokogiri::XML(open(url)).xpath("//event").each do |e|
    puts "Creating " + (e>"event_name").text + "..."

    # get the date (for readability)
    date_range = e>"date_range"
    start_date = DateTime.parse( (date_range>"start_date").text + 
                                 (date_range>"start_time").text )
    end_date = DateTime.parse( (date_range>"end_date").text +
                               (date_range>"end_time").text )


    Event.create(
      :title => (e>"event_name").text,
      :unique_event_id => (e>"unique_event_id").text.to_i,
      :description => (e>"description").text ,
      :start_at => start_date,
      :end_at => end_date )
  end
end