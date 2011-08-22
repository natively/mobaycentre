require 'open-uri'
require 'nokogiri'

xml_file = Nokogiri::XML(open("http://go-xml.smgbooking.com/EventListXml.ashx?wl=3.7FEDB662"))
events = xml_file.xpath("//event")

events.each do |e|
  puts "Creating " + (e>"event_name").text + "..."
  Event.create(
    :title => (e>"event_name").text,
    :unique_event_id => (e>"unique_event_id").text.to_i,
    :description => (e>"description").text )
end